# mikrotiks versao 3.28

/ip pool add name=bloqueados ranges=10.1.1.1-10.1.1.254

/ip firewall address-list
add address=201.48.131.175 comment="" disabled=no list="sites permitidos"
add address=10.1.1.0/24 comment="" disabled=no list="clientes bloqueados"

/ip firewall filter
add action=accept chain=forward comment="bloqueio clientes" disabled=no \
    dst-address-list="sites permitidos" dst-port=80 protocol=tcp \
    src-address-list="clientes bloqueados"
add action=accept chain=forward comment="" disabled=no dst-port=53 protocol=\
    udp src-address-list="clientes bloqueados"
add action=accept chain=forward comment="" disabled=no dst-port=53 protocol=\
    tcp src-address-list="clientes bloqueados"
add action=drop chain=forward comment="" disabled=no dst-address-list=\
    "!sites permitidos" dst-port=!80 protocol=tcp src-address-list=\
    "clientes bloqueados"

/ip firewall nat
add action=masquerade chain=srcnat comment="Redirecionamento Aviso Bloq" \
    disabled=no src-address-list="clientes bloqueados"
add action=dst-nat chain=dstnat comment="" disabled=no dst-address-list=\
    "!sites permitidos" dst-port=80 protocol=tcp src-address-list=\
    "clientes bloqueados" to-addresses=201.48.131.175 to-ports=81



