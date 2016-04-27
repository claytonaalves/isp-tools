import subprocess
import shlex
import database
from vigo_criptografia import decodifica_senha_gateway

class ContaMacIP:

    def desativa(self):
        subprocess.call(
            shlex.split('/usr/local/sbin/bloqueia_empresa.sh {0} {1} {2}'
            .format(self.gateway_address, self.gateway_password, self.interface)))
    
    def ativa(self):
        subprocess.call(
            shlex.split('/usr/local/sbin/libera_empresa.sh {0} {1} {2}'
            .format(self.gateway_address, self.gateway_password, self.interface)))
    

def contas_macip(idcliente):
    cursor = database.get_vigo_connection().cursor()
    cursor.execute("""\
    select a.id_cliente, a.id_gateway, a.tipo as interface, b.ip, b.login, b.senha 
    from sistema_gateways_clientes a 
    left join sistema_gateways b on (a.id_gateway=b.id)
    where a.id_cliente={0}
    """.format(idcliente))

    for row in cursor:
        conta = ContaMacIP()
        conta.id_cliente = row[0]
        conta.interface = row[2]
        conta.gateway_address = row[3]
        conta.gateway_login = row[4]
        conta.gateway_password = decodifica_senha_gateway(row[5])
        yield conta

if __name__=="__main__":
    for conta in contas_macip(4164):
        conta.ativa()

