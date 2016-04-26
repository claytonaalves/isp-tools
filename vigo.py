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

def insere_auditoria(historico):
    cursor = database.get_vigo_connection().cursor()

    # Inserir informação na auditoria geral do Vigo
    cursor.execute('INSERT INTO sistema_auditoria (data, hora, acao, idempresa)'
                   'VALUES (CURDATE(), CURTIME(), %s, 1)', (historico,))

def insere_auditoria_cliente(idcliente, historico):
    cursor = database.get_vigo_connection().cursor()

    # Inserir informação na auditoria por cliente do Vigo
    cursor.execute('INSERT INTO sistema_auditoria_cliente (data, hora, acao, idcliente)'
                   'VALUES (CURDATE(), CURTIME(), %s, %s)', (historico, idcliente,))

if __name__=="__main__":
    insere_auditoria('teste')
    insere_auditoria_cliente(9999, 'teste')
