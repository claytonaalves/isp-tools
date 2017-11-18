import re
from auxlib import getSSHLines, snmpwalk

# --------------------------------------------------------------------------------

class Mikrotik(object):
    rpppoe = re.compile(r'STRING: <pppoe-([a-zA-Z0-9@\s\.\-_]+?)(-[0-9])?\s*>')
    rhotspot = re.compile(r'STRING: \"(.+)\"')


    def __init__(self, ipaddr='0.0.0.0', username='', password='', ssh_port='22', type='MAC/IP'):
        self.ipaddr   = ipaddr
        self.username = username
        self.password = password
        self.ssh_port = ssh_port

        if type == 'PPP':
            self.type = 'PPPoE'
            self.oid  = 'IfDescr'
            self.regexp = self.rpppoe
        
        elif type == 'MAC/IP':
            self.type = 'MAC/IP'
            self.oid  = ''
            self.re   = None
        
        else:
            self.type = 'Hotspot'
            self.oid  = 'enterprises.14988.1.1.5.1.1.3'
            self.regexp = self.rhotspot


    def __repr__(self):
        return "<Mikrotik %s - %s>" % (self.ipaddr, self.type)


    def active(self):
        if self.type == 'PPPoE':
            lista = [username for usarname in self.ppp_active()]
        
        elif self.type == 'Hotspot':
            lista = [username for usarname in self.hotspot_active()]
        
        return lista


    def arp_active(self):
        """
        Retorna lista de usuarios online na lista por ARP
        """
        #~ r1 = re.compile(r"online\s+(([0-9]{1,3}\.){3}[0-9]{1,3})")
        re_ip = re.compile('(([0-9]{1,3}\.){3}[0-9]{1,3})')
        re_rt = re.compile('\s(([0-9]{1,10})\/([0-9]{1,10}))') # Rate
        
        #~ for line in getSSHLines(self, "/ip fir add print"):
        for line in getSSHLines(self, "/que sim print rate"):
            m1 = re_ip.search(line)
            m2 = re_rt.search(line)
            
            if (m1 and m2):
                ip = m1.group()
                rt = m2.group(1)
                
                if not rt == r'0/0':
                    yield ip


    def ppp_active(self):
        for line in snmpwalk(self.ipaddr, self.oid):
            match = self.regexp.search(line)
            
            if match:
                username = match.group(1).strip()
                yield username
            

    def hotspot_active(self):
        for line in snmpwalk(self.ipaddr, self.oid):
            match = self.regexp.search(line)
            
            if match:
                username = match.group(1).strip()
                yield username

# --------------------------------------------------------------------------------


def get_Nas_List():
    while True:
        thenas = nasPool.get()
        if thenas is None:
            break
        
        for line in snmpwalk(thenas.ipaddr, thenas.oid):
            match = thenas.re.search(line)
            if not match:
                continue
                
            username = match.group(1).strip()
            
            thenas.userlist.add(username)
            NasUsrList.add(username)


if __name__ == '__main__':
    mkt = Mikrotik("192.168.0.3", "admin")

    for queue in mkt.queues:
        print queue
