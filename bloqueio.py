#!/usr/bin/env python
# coding: utf8

from cliente import clientes_com_boletos_vencidos

def main():
    for cliente in clientes_com_boletos_vencidos():
        cliente.bloqueia()


if __name__=="__main__":
    main()

