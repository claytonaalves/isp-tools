import routeros
import socket
socket.setdefaulttimeout(10.0)

class ConnectionError(Exception):
    pass

def formataBanda(banda):
    x = banda.split('-')
    return '%sk/%sk' % (x[1], x[0])

class Mikrotik:

    def __init__(self, ip, username, password):
        s = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
        try:
            s.connect((ip, 8728))
        except socket.error:
            raise ConnectionError('Erro ao conectar na porta de API do Mikrotik')
        
        self.api = routeros.API(s)
        self.api.login(username, password)
        
    def add(self, ip, mac, banda, comment):
        banda = formataBanda(banda)

        cmd = ['/ip/arp/add', '=address=%s'%ip, 
               '=mac-address=%s'%mac, '=interface=mac', 
               '=comment=%s'%comment]
        self.api.talk(cmd)
        
        cmd = ['/queue/simple/add', '=name=%s_%s'%(comment, ip), '=target-addresses=%s/32'%ip, 
               '=dst-address=0.0.0.0/0', '=interface=all', '=parent=none', '=priority=8', 
               '=queue=default/default', '=limit-at=%s'%banda, '=max-limit=%s'%banda, 
               '=total-queue=default', '=disabled=no']
        self.api.talk(cmd)
        
    def rem(self, ip):
        self.arp_remove(ip)
        self.simpleQueue_remove(ip)
        self.addressList_remove(ip)
            
    def upd(self, ip, mac, banda, old_ip, comment):
        banda = formataBanda(banda)
        
        for ID in self.arpID(old_ip):
            self.api.talk(['/ip/arp/set',
                           '=.id=%s'%ID,
                           '=address=%s'%ip,
                           '=mac-address=%s'%mac,
                           '=interface=mac',
                           '=comment=%s'%comment])
        
        for ID in self.queueID(old_ip):
            self.api.talk(['/queue/simple/set',
                   '=.id=%s'%ID,
                   '=name=%s_%s'%(comment, ip),
                   '=target-addresses=%s/32'%ip,
                   '=dst-address=0.0.0.0/0',
                   '=interface=all',
                   '=parent=none',
                   '=priority=8',
                   '=queue=default/default',
                   '=limit-at=%s'%banda,
                   '=max-limit=%s'%banda,
                   '=total-queue=default',
                   '=disabled=no'])
        
        for ID in self.addressListID(old_ip):
            self.api.talk(['/ip/firewall/address-list/set', '=.id=%s'%ID, '=address=%s'%ip])

    def aadd(self, mac, interface, comment):
        """Access-List ADD
        
        Adiciona um mac na lista Access-List do mikrotik."""
        cmd = ['/interface/wireless/access-list/add', '=mac-address=%s'%mac,
               '=interface=%s'%interface, '=comment=%s'%comment, '=forwarding=no']
        self.api.talk(cmd)

    def aupd(self, new_mac, old_mac, interface, comment):
        """Access-List UPD
        
        Atualiza um mac na lista Access-List."""
        for ID in self.accessListID(old_mac):
            self.api.talk(['/interface/wireless/access-list/set',
                           '=.id=%s'%ID,
                           '=mac-address=%s'%new_mac,
                           '=interface=%s'%interface,
                           '=comment=%s'%comment])

    def arem(self, mac):
        """Access-List REM
        
        Remove uma entrada de mac do Access-List"""
        for ID in self.accessListID(mac):
            self.api.talk(['/interface/wireless/access-list/remove', '=.id=%s'%ID])

    def blo(self, ip):
        '''
        Simplesmente adiciona o IP do cliente em uma Address-list
        chamada "bloqueado"
        '''
        self.api.talk(['/ip/firewall/address-list/add', '=list=bloqueado', '=address=%s'%ip])
        
    def lib(self, ip):
        for ID in self.addressListID(ip):
            self.api.talk(['/ip/firewall/address-list/remove', '=.id=%s'%ID])
        
    def arp_remove(self, ip):
        for ID in self.arpID(ip):
            self.api.talk(['/ip/arp/remove', '=.id=%s'%ID])

    def simpleQueue_remove(self, ip):
        for ID in self.queueID(ip):
            self.api.talk(['/queue/simple/remove', '=.id=%s'%ID])

    def addressList_remove(self, ip):
        '''Remove um IP da Address List.'''
        for ID in self.addressListID(ip):
            self.api.talk(['/ip/firewall/address-list/remove', '=.id=%s'%ID])

    def addressListID(self, ip):
        result = self.api.talk(['/ip/firewall/address-list/print', '?address=%s'%ip])
        return [r[1]['.id'] for r in result if r[0]=='!re']

    def accessListID(self, mac):
        r = self.api.talk(['/interface/wireless/access-list/print', '?mac-address=%s'%mac])
        return [r[1]['.id'] for r in result if r[0]=='!re']
       
    def arpID(self, ip):
        result = self.api.talk(['/ip/arp/print', '?address=%s'%ip])
        return [r[1]['.id'] for r in result if r[0]=='!re']

    def queueID(self, ip):
        result = self.api.talk(['/queue/simple/print', '?target-addresses=%s/32'%ip])
        return [r[1]['.id'] for r in result if r[0]=='!re']

    def arp_active(self):
        """Retorna a lista de usuarios atualmente ativos (online) no mikrotik via ARP.
        
        Requisitos:
        - Ativar a API do mikrotik
        - Configurar no mikrotik, em mangle, as regras para criar umam address-list dos
          usuarios ativos.
        """
        response = self.api.talk(['/ip/firewall/address-list/print'])
        for reg in response:
            if reg[0] == '!done':
                return
                
            yield reg[1]['address']
       
    def close(self):
        try:
            self.api.talk(['/quit'])
        except routeros.Error:
            print 'Desconectando'
