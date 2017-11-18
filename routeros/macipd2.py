#!/usr/bin/python
import MySQLdb
import time
import datetime as dt
import daemon
import ConfigParser
import logging
import RouterOS

CONFIG_FILE = '/etc/vigo.conf'
config = ConfigParser.ConfigParser()
config.read(CONFIG_FILE)

logging.basicConfig(level=logging.INFO,
                    filename='/var/log/macip.log',
                    format='%(asctime)s %(levelname)s: %(message)s',
                    datefmt='%d/%m %H:%M:%S')

class GatewayInfoNotFound(Exception):
    pass

class MikrotikHandler(object):

    def __init__(self, api_connection):
        self.connection = api_connection

    def macip_add(self, ip_address, mac_address, bandwidth, username):
        # Remove as entradas antes de tudo para evitar aquela
        # duplicacao de dados chata.
        self.macip_rem(ip_address, mac_address)

        # Cria a entrada em IP -> ARP
        self.connection.do('/ip/arp/add', 
            address     = ip_address,
            mac_address = mac_address,
            interface   = 'mac',
            comment     = username)

        # Cria a queue
        bw = self._format_bandwidth(bandwidth)
        self.connection.do('/queue/simple/add', 
            name        = '%s_%s'%(username, ip_address),
            target      = '%s/32'%ip_address,
            dst         = '0.0.0.0/0',
            parent      = 'none',
            priority    = '8',
            queue       = 'default/default',
            limit_at    = '%s'%bw,
            max_limit   = '%s'%bw,
            total_queue = 'default',
            disabled    = 'no')

        # Adiciona entrada em Access-List
        #self.connection.do('/interface/wireless/access-list/add',
        #    mac_address=mac_address,
        #    interface='all',
        #    comment=username)

    def macip_upd(self, old_ip_address, ip_address, mac_address, bandwidth, username):
        self.connection.do('/ip/arp/set', 
            _address    = old_ip_address,
            address     = ip_address,
            mac_address = mac_address,
            comment     = username)

        # Atualiza queue
        bw = self._format_bandwidth(bandwidth)
        self.connection.do('/queue/simple/set', 
            _target     = '%s/32'%old_ip_address,
            name        = '%s_%s'%(username, ip_address),
            target      = '%s/32'%ip_address,
            dst         = '0.0.0.0/0',
            parent      = 'none',
            priority    = '8',
            queue       = 'default/default',
            limit_at    = '%s'%bw,
            max_limit   = '%s'%bw,
            total_queue = 'default',
            disabled    = 'no')

        # Atualiza Access-List
        # TODO: talvez isso aqui de erro quando o username do usuario for alterado (quando alterar o username, o script nao ira
        # conseguir localizar ele no access-list)
        # Provavelmente terei que adicionar o old_mac como parametro na trigger
        #self.connection.do('/interface/wireless/access-list/set',
        #    _comment=username,
        #    mac_address=mac_address,
        #    interface='all',
        #    comment=username)

    def macip_rem(self, ip_address, mac_address):
        self.connection.do('/ip/arp/remove', _address=ip_address)
        self.connection.do('/queue/simple/remove', _target_addresses='%s/32'%ip_address) 
        #self.connection.do('/interface/wireless/access-list/remove', _mac_address=mac_address) 

    # Quando o cliente nao quiser que o usuario seja redirecionado para o aviso de bloqueio,
    # mudar isso aqui para remover o usuario das queues e arp
    def macip_blo(self, ip_address):
        self.connection.do('/ip/firewall/address-list/add', list='aviso_permanente', address=ip_address)

    def macip_lib(self, ip_address):
        self.connection.do('/ip/firewall/address-list/remove', _list='aviso_permanente', _address=ip_address)

    def _format_bandwidth(self, bw):
        x = bw.split('-')
        return '%sk/%sk' % (x[1], x[0])


def get_api_connection(ip):
    '''
    Proxy para retornar uma conexao a API do mikrotik.
    Se ja houver uma conexao, retorna ela, caso contrario sera
    criada uma nova conexao.
    '''
    global conn
    if connections.has_key(ip):
        mk_connection = connections[ip]
    else:
        qry = conn.cursor()
        returned_rows = qry.execute('select login, senha from gateways where ip="%s"' % ip)
        if returned_rows:
            mk = qry.fetchone()
            connections[ip] = MikrotikHandler(RouterOS.API(ip, mk[0], mk[1]))
        else:
            raise GatewayInfoNotFound('Gateway info not found in Database')
        mk_connection = connections[ip]
    return mk_connection

    
def exec_command(iid, params):
    def delete_command(iid):
        qry.execute('delete from cmd_queue where id=%d' % iid)

    params = params.split()
    action = params[0]
    if action not in ['macip_add', 'macip_lib', 'macip_blo', 'macip_upd', 'macip_rem']:
        return
    mikrotik_ip = params[1]
    params = params[2:]
        
    try:
        mikrotik = get_api_connection(mikrotik_ip)
    except GatewayInfoNotFound:
        logging.info('>>> Gateway "%s" nao cadastrado no banco de dados!' % mikrotik_ip)
        logging.info('Excluindo o comando: %s %s' % (action, params))
        delete_command(iid)
        return
    except RouterOS.ConnectionError:
        delete_command(iid)
    else:
        try:
            getattr(mikrotik, action)(*params)
        except RuntimeError:
            logging.info('Command error >> Action: %s Params: %s' % (action, params))
            delete_command(iid)
        except TypeError:
            logging.info('Command error >> Action: %s Params: %s' % (action, params))
            delete_command(iid)
        except IndexError:
            logging.info('Command error >> Action: %s Params: %s' % (action, params))
            delete_command(iid)
        else:
            logging.info("GW: %s Action: %s Params: %s" % (mikrotik_ip, action, ' '.join(params)))
            delete_command(iid)
    

daemon.daemonize(pidfile='/var/run/macipd.pid')
logging.info('Daemon iniciado. Aguardando comandos...')

conn = MySQLdb.connect(host   = config.get('vigo', 'hostname'), 
                       user   = config.get('vigo', 'username'),
                       passwd = config.get('vigo', 'password'), 
                       db     = config.get('vigo', 'database'))
qry = conn.cursor()
connections = dict()

while True:
    qry.execute('select * from cmd_queue order by id')
    for command in qry:
        exec_command(*command)
    connections = dict()
    time.sleep(10)

# TODO: quando a senha do mk esta cadastrada de forma incorreta na tabela gateways, o daemon cai

