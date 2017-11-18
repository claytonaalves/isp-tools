"""
Funcoes auxiliares
"""

from subprocess import Popen, PIPE, STDOUT

def getSNMPLines(self, oid):
    params = ["snmpwalk", "-v1", "-c", "public", self.ipaddr, oid]

    snmp = Popen(params, stdout=PIPE, stderr=STDOUT)
    (output,stderr) = snmp.communicate()
    
    # Debug begin
    #~ output = open('./mikrotik/hs_snmp_output','r').read()
    #~ output += open('./mikrotik/ppp_snmp_output','r').read()
    # Debug end
    
    for line in output.splitlines():
        yield line


def snmpwalk(ipaddr, oid, community='public'):
    params = ["snmpwalk", "-v1", "-r3", "-c", community, ipaddr, oid]
    snmp = Popen(params, stdout=PIPE, stderr=STDOUT)
    output = snmp.communicate()[0]

    for snmpline in output.splitlines():
        yield snmpline


def getSSHLines(mkt, cmd):
    """
    Conecta em um host via ssh e executa o comando 'cmd'

    Requerimentos:
    - Comando ssh
    - Chave dsa pra conexao direta
    """
    params = ["ssh", 
              "-i", "/opt/vigo/id_dsa", 
              "-l", mkt.username, mkt.ipaddr, 
              "-p", mkt.ssh_port, cmd]

    ssh = Popen(params, stdout=PIPE, stderr=STDOUT)
    (out, err) = ssh.communicate()
    
    #~ out = '''
    #~ online 1.1.1.1
    #~ online 1.1.1.2
    #~ online 1.1.1.3
    #~ '''

    for line in out.splitlines():
        yield line


def runCommand(command):
    params = ["ssh", "-i", "/opt/vigo/id_dsa", "-l", self.username, 
              self.ipaddr, "-p", self.ssh_port, command]

    ssh = Popen(params, stdout=PIPE, stderr=STDOUT)
