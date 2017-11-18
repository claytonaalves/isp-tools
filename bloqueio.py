#!/usr/bin/env python
# coding: utf8

import sys
import datetime
from cliente import clientes_com_boletos_vencidos

def main():
    # O bloqueio só deverá ser efetuado nos seguintes dias:
    dias_de_bloqueio = [01, 06, 11, 16, 21, 26]
    hoje = datetime.date.today()

    #if not (hoje.day in dias_de_bloqueio):
    #    sys.exit(0)

    for cliente in clientes_com_boletos_vencidos():
        cliente.bloqueia()


if __name__=="__main__":
    main()

