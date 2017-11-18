import socket
import RouterOS

DEBUG = True
RouterOS.DEBUG = True

class Mikrotik:

    def __init__(self, ip, login, senha):
        self.ip = ip
        self.login = login
        self.senha = senha
        self.connected = False
        self.connect()


    #~ def __del__(self):
        #~ if self.connected:
            #~ self.conn.talk('/quit')
            #~ self.sock.close()

    def connect(self):
        if DEBUG:
            print self.ip, 'Conecting...'
            
        self.sock = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
        try:
            self.sock.connect((self.ip, 8728))
            self.connected = True
        except socket.error:
            if DEBUG:
                print 'Connection error...', self.ip
            return
        
        if DEBUG:
            print self.ip, 'Connected'
 
        self.conn = RouterOS.Api(self.sock)
        self.conn.login(self.login, self.senha)

    
    def add(self, ip, mac, banda, comment):
        banda = self.formataBanda(banda)
        
        # Adiciona o IP no ARP
        cmd = ['/ip/arp/add', '=address=%s'%ip, '=mac-address=%s'%mac, '=interface=mac', '=comment=%s'%comment]
        self.conn.talk(cmd)
        
        # Cria a Queue
        cmd = ['/queue/simple/add', '=name=%s_%s'%(comment, ip), '=target-addresses=%s/32'%ip, '=dst-address=0.0.0.0/0', '=interface=all', '=parent=none', '=priority=8', '=queue=default/default', '=limit-at=%s'%banda, '=max-limit=%s'%banda, '=total-queue=default', '=disabled=no']
        self.conn.talk(cmd)
    
    
    def rem(self, ip):
        # Remove o ip e mac de ARP
        ID = self.arpID(ip)
        if ID:
            self.conn.talk(['/ip/arp/remove', '=.id=%s'%ID])
        
        # Remove a Queue
        ID = self.queueID(ip)
        if ID:
            self.conn.talk(['/queue/simple/remove', '=.id=%s'%ID])
        
        # Remove a regra de Address List
        ID = self.addressListID(ip)
        if ID:
            self.conn.talk(['/ip/firewall/address-list/remove', '=.id=%s'%ID])


    def upd(self, ip, mac, banda, comment, old_ip):
        banda = self.formataBanda(banda)
        
        ID = self.arpID(old_ip)
        if ID:
            cmd = ['/ip/arp/set', '=.id=%s'%ID, '=address=%s'%ip, '=mac-address=%s'%mac, '=interface=mac', '=comment=%s'%comment]
            self.conn.talk(cmd)
        
        ID = self.queueID(old_ip)
        if ID:
            cmd = ['/queue/simple/set', '=.id=%s'%ID, '=name=%s_%s'%(comment, ip), '=target-addresses=%s/32'%ip, '=dst-address=0.0.0.0/0', '=interface=all', '=parent=none', '=priority=8', '=queue=default/default', '=limit-at=%s'%banda, '=max-limit=%s'%banda, '=total-queue=default', '=disabled=no']
            self.conn.talk(cmd)
        
        ID = self.addressListID(old_ip)
        if ID:
            cmd = ['/ip/firewall/address-list/set', '=.id=%s'%ID, '=address=%s'%ip]
            self.conn.talk(cmd)


    def blo(self, ip):
        self.conn.talk(['/ip/firewall/address-list/add', '=list=bloqueado', '=address=%s'%ip])


    def lib(self, ip):
        ID = self.addressListID(ip)
        if ID:
            self.conn.talk(['/ip/firewall/address-list/remove', '=.id=%s'%ID])


    def acclistAdd(self, mac, iface='all', name='undef'):
        '''
        Adiciona informacoes no Access List da interface wireless
        
        /interface/wireless/access-list/add mac-address=FF:FF:FF:FF:FF:FF comment=teste interface=wlan3 forwarding=no        
        '''
        cmd = ['/interface/wireless/access-list/add', '=mac-address=%s'%mac, '=interface=%s'%iface, '=comment=%s'%name]
        self.conn.talk(cmd)


    def acclistRem(self, mac):
        '''
        /interface/wireless/access-list/remove
        '''
        ID = self.accesslistID(mac)
        if ID:
            cmd = ['/interface/wireless/access-list/remove', '=.id=%s'%ID]
            self.conn.talk(cmd)


    def acclistUpd(self, mac, iface='all', name='undef', old_mac=''):
        '''
        /interface/wireless/access-list/set
        '''
        ID = self.accesslistID(old_mac)
        if ID:
            cmd = ['/interface/wireless/access-list/set', '=.id=%s'%ID, '=mac-address=%s'%mac,'=interface=%s'%iface, '=comment=%s'%name]
            self.conn.talk(cmd)
        
    
    def dhcpAdd(self):
        pass
        

    def dhcpUpd(self):
        pass
        

    def dhcpRem(self):
        pass
        

    def arpID(self, ip):
        cmd = ['/ip/arp/print', '?address=%s'%ip]
        r = self.conn.talk(cmd)[0]
        if r[0] == '!done':
            return False
        return r[1]['.id']
        

    def queueID(self, ip):
        cmd = ['/queue/simple/print', '?target-addresses=%s/32'%ip]
        r = self.conn.talk(cmd)[0]
        if r[0] == '!done':
            return False
        return r[1]['.id']


    def addressListID(self, ip):
        cmd = ['/ip/firewall/address-list/print', '?address=%s'%ip]
        r = self.conn.talk(cmd)[0]
        if r[0] == '!done':
            return False
        return r[1]['.id']
    
    
    def accesslistID(self, mac):
        cmd = ['/interface/wireless/access-list/print', '?mac-address=%s' % mac]
        r = self.conn.talk(cmd)[0]
        if r[0] == '!done':
            return False
        return r[1]['.id']


    def dhcpID(self, mac):
        return False
        
        #~ cmd = ['/interfaces/access-list'] #...
        #~ r = self.conn.talk(cmd)[0]
        #~ if r[0] == '!done':
            #~ return False
        #~ return r[1]['.id']


    def formataBanda(self, banda):
        x = banda.split('-')
        return '%sk/%sk' % (x[1], x[0])


    def execute(self, cmd):
        if not self.connected:
            return False

        if DEBUG:
            print cmd
            
        params = cmd.split()
        action = params[0]
        
        if action == 'ADD':
            self.add(*params[2:])
            
        elif action == 'UPD':
            self.upd(*params[2:])
            
        elif action == 'REM':
            self.rem(*params[2:])
            
        elif action == 'LIB':
            self.lib(*params[2:])
            
        elif action == 'BLO':
            self.blo(*params[2:])
            
        elif action == 'ACCLIST_ADD':
            self.acclistAdd(*params[2:])
            
        elif action == 'ACCLIST_UPD':
            self.acclistUpd(*params[2:])
            
        elif action == 'ACCLIST_REM':
            self.acclistRem(*params[2:])
            
        elif action == 'DHCP_ADD':
            self.dhcpAdd(*params[2:])
            
        elif action == 'DHCP_UPD':
            self.dhcpUpd(*params[2:])
            
        elif action == 'DHCP_REM':
            self.dhcpRem(*params[2:])
            
        else:
            return False
        
        return True