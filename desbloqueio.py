#!/usr/bin/env python
# coding: utf8

import database
import datetime
from cliente import clientes_bloqueados

cursor = database.get_vigo_connection().cursor()

# Pego todos os clientes que estão bloqueados e
# verifico se há boletos em aberto/vencido para eles
for cliente in clientes_bloqueados():
    cursor.execute('SELECT vencimento            '
                   'FROM financeiro_boletos      '
                   'WHERE                        '
                   '   id_cliente=%s             '
                   '   AND ativo="S"             '
                   '   AND pago="0"              '
                   '   AND vencimento BETWEEN \'2015-01-01\' AND CURDATE() '
                   'ORDER BY vencimento          '
                   'LIMIT 1                      '
                   , (cliente.id,))

    row = cursor.fetchone()

    # Se não houver boletos em aberto/vencido, libero
    if not row:
        cliente.libera()
        continue

    vencimento = row[0]
    dias_atraso = (datetime.date.today()-vencimento).days
    if (dias_atraso<15):
        cliente.libera()

database.get_vigo_connection().commit()
   
