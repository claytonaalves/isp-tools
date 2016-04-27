# coding: utf8
# 
# Copyright (c) 2015 Clayton de Almeida Alves
# 
# Permission is hereby granted, free of charge, to any person obtaining a copy of
# this software and associated documentation files (the "Software"), to deal in
# the Software without restriction, including without limitation the rights to
# use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of
# the Software, and to permit persons to whom the Software is furnished to do so,
# subject to the following conditions:
# 
# The above copyright notice and this permission notice shall be included in all
# copies or substantial portions of the Software.
# 
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS
# FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR
# COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER
# IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN
# CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

import database
import datetime
import vigo
import radius
from config import log_bloqueio as log
from utils import desconecta_cliente
from macip import contas_macip

class Cliente(object):

    def bloqueia(self):
        log.info('Bloqueando cliente {0}'.format(self))
        self.cursor = database.get_vigo_connection().cursor()

        self.bloqueia_cadastro()
        self.bloqueia_contas_conexao()

        historico_auditoria = "Cliente: {0} foi bloqueado automaticamente pelo sistema".format(self)

        vigo.insere_auditoria(historico_auditoria)
        vigo.insere_auditoria_cliente(self.id, historico_auditoria)

        self.desconecta_todos_logins_do_cliente()
        self.desativa_contas_macip()

    def libera(self):
        log.info('Liberando cliente {0}'.format(self))
        self.cursor = database.get_vigo_connection().cursor()

        self.libera_cadastro()
        self.libera_contas_conexao()

        historico_auditoria = "Cliente: {0} foi liberado automaticamente pelo sistema".format(self)

        vigo.insere_auditoria(historico_auditoria)
        vigo.insere_auditoria_cliente(self.id, historico_auditoria)

        self.desconecta_todos_logins_do_cliente()
        self.ativa_contas_macip()

    def libera_cadastro(self):
        self.cursor.execute('UPDATE cadastro_clientes SET situacao="L" WHERE id=%s', (self.id,))

    def bloqueia_cadastro(self):
        self.cursor.execute("UPDATE cadastro_clientes SET situacao='B' WHERE id=%s", self.id)

    def libera_contas_conexao(self):
        cursor2 = database.get_radius_connection().cursor()
        for username in self.usernames:
            cursor2.execute('DELETE FROM radcheck WHERE username=%s AND attribute="Auth-Type"', (username,)) 

    def bloqueia_contas_conexao(self):
        cursor2 = database.get_radius_connection().cursor()
        for username in self.usernames:
            cursor2.execute('INSERT INTO radcheck (username, attribute, op, value, id_cliente, id_empresa) '
                            'VALUES (%s, "Auth-Type", ":=", "Reject", %s, 1)', (username, self.id))

    def desconecta_todos_logins_do_cliente(self):
        for username in self.usernames:
            desconecta_cliente(radius.UserConnection(username))

    def desativa_contas_macip(self):
        for conta_macip in contas_macip(self.id):
            conta_macip.desativa()

    def ativa_contas_macip(self):
        for conta_macip in contas_macip(self.id):
            conta_macip.ativa()

    @property
    def usernames(self):
        cursor2 = database.get_radius_connection().cursor()
        cursor2.execute("SELECT DISTINCT username FROM radcheck WHERE id_cliente=%s", self.id)
        return [row[0] for row in cursor2.fetchall()]

    def __str__(self):
        return "{0} - {1}".format(self.id, self.nome.encode('utf8'))

    def __repr__(self):
        return "Cliente(%s, %s)" % (self.id, self.nome)

    def __eq__(self, other):
        return self.id==other.id

    def __ne__(self, other):
        return (not self.__eq__(other))

    def __hash__(self):
        return hash(self.__repr__())


def clientes_com_boletos_vencidos():
    """ Gerador dos ids dos clientes que se enquadram nos critérios de bloqueio
        Considerar:
          - Com mais de 15 dias de atrazo e no maximo 120 dias
          - Somente em atrazo a partir de abril/2015
    """
    cursor = database.get_vigo_connection().cursor()
    cursor.execute("SELECT b.vencimento, b.id_cliente, c.nome            "
                   "FROM financeiro_boletos b                            "
                   "LEFT JOIN cadastro_clientes c ON (c.id=b.id_cliente) "
                   "WHERE                                                "
                   "   c.situacao='L'                                    "
                   "   AND c.idempresa=1                                 "
                   "   AND b.pago='0'                                    "
                   "   AND b.ativo='S'                                   "
                   "   AND b.vencimento>='2015-01-01'                    "
                   "   AND b.vencimento<CURDATE()                        ")
    clientes = set()
    for vencimento, idcliente, nome in cursor:
        dias_atraso = (datetime.date.today()-vencimento).days
        if (dias_atraso>15):
            cliente = Cliente()
            cliente.id = idcliente
            cliente.nome = nome.decode('latin1').upper()
            clientes.add(cliente)

    for cliente in clientes:
        yield cliente


def clientes_bloqueados():
    cursor = database.get_vigo_connection().cursor()
    cursor.execute("SELECT id, nome FROM cadastro_clientes WHERE situacao='B'")
    for idcliente, nome in cursor:
        cliente = Cliente()
        cliente.id = idcliente
        cliente.nome = nome.decode('latin1').upper()
        yield cliente


if __name__=="__main__":
    for cliente in clientes_com_boletos_vencidos():
        print cliente

