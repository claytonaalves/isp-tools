# Testado nas versoes 3.13, 2.9.6

:local BlockedRange 10.3.2.0/24
:local AllowedRange 189.1.145.2
:local PortMsgServer 81

/ip pool add name=blocked ranges=10.3.2.1-10.3.2.254

/ip firewall address-list
add address=$BlockedRange disabled=no list=BlockMsg
add address=$AllowedRange disabled=no list=AllowedSites

/ip firewall nat
add chain=srcnat src-address=$BlockedRange action=masquerade disabled=no comment="Nat clientes bloq."
add chain=dstnat src-address=$BlockedRange action=dst-nat dst-port=80 protocol=tcp to-addresses=$AllowedRange to-ports=$PortMsgServer disabled=no comment="Redir. msg bloq."

# Correcao pra bug do mikrotik 2.9.6
print all without-paging
move [find comment="Nat clientes bloq."] 0
move [find comment="Redir. msg bloq."] 1

/ip firewall filter
add chain=forward action=accept dst-port=80 protocol=tcp src-address=$BlockedRange disabled=no comment="Libera porta 80 para clientes bloq"
add chain=forward action=accept dst-port=53 protocol=udp src-address=$BlockedRange disabled=no comment="Libera DNS"
add chain=forward action=drop src-address=$BlockedRange dst-address-list=!AllowedSites disabled=no comment="Bloq. restante de conexoes de clientes bloqueados"

# Correcao pra bug do mikrotik 2.9.6
print all without-paging
move [find comment="Libera porta 80 para clientes bloq"] 0
move [find comment="Libera DNS"] 1
move [find comment="Bloq. restante de conexoes de clientes bloqueados"] 2

/file remove msgblock.rsc