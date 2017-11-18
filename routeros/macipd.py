#!/usr/bin/python

import MySQLdb
import time
import datetime as dt
import daemon
import RouterOS

DEBUG = True

class GatewayInfoNotFound(Exception):
    pass


def log_message(message):
    date = dt.datetime.now().strftime('%d/%m/%Y %H:%M:%S')
    tmp = "%s - %s" % (date, message)
    if DEBUG:
        print tmp
    else:
        log = open('/var/log/arp.log','a')
        print >>log, tmp
        log.close()


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
            connections[ip] = RouterOS.API(ip, mk[0], mk[1])
        else:
            raise GatewayInfoNotFound('Gateway info not found in Database')
        mk_connection = connections[ip]
    return mk_connection

    
def exec_command(iid, mikrotik_ip, action, params):
    def delete_command(iid):
        qry.execute('delete from mikrotik_cmd_queue where id=%d' % iid)
        
    try:
        mikrotik = get_api_connection(mikrotik_ip)
    except GatewayInfoNotFound:
        log_message('>>> Gateway "%s" nao cadastrado no banco de dados!' % mikrotik_ip)
        log_message('Excluindo o comando: %s %s' % (action, params))
        delete_command(iid)
        return
    except RouterOS.ConnectionError:
        delete_command(iid)
    else:
        try:
            getattr(mikrotik, action.lower())(*params.split())
        except RuntimeError:
            log_message('Command error >> Action: %s Params: %s' % (action, params))
            delete_command(iid)
        except TypeError:
            log_message('Command error >> Action: %s Params: %s' % (action, params))
            delete_command(iid)
        except IndexError:
            log_message('Command error >> Action: %s Params: %s' % (action, params))
            delete_command(iid)
        else:
            log_message("GW: %s Action: %s Params: %s" % (mikrotik_ip, action, params))
            delete_command(iid)
    

if not DEBUG:
    daemon.daemonize(pidfile='/var/run/macipd.pid')
log_message('Daemon iniciado. Aguardando comandos...')

conn = MySQLdb.connect(host='localhost', user='root', passwd='', db='vigo')
qry = conn.cursor()
connections = dict()

while True:
    qry.execute('select * from mikrotik_cmd_queue order by id')
    for command in qry:
        exec_command(*command)
    connections = dict()
    time.sleep(10)
