
# Pega usuarios online no PPP
# Parametros: name, caller-id, address, uptime, bytes

/ppp active
:foreach usuario in=[find] do={\
   :local name [get $usuario name]
   :local address [get $usuario address]
   :local mac [get $usuario caller-id]
   :local uptime [get $usuario uptime]
   :local bytes [get $usuario bytes]
   :put ("name=$name mac=$mac address=$address uptime=$uptime")
}

# =============================================================================================
# Pega usuarios online Hotspot
# Parametros: user, address, mac-address, uptime

/ip hotspot active
:foreach usuario in=[/ip hotspot active find] do={
   :local name [/ip hotspot active get $usuario user]
   :local address [/ip hotspot active get $usuario address]
   :local mac [/ip hotspot active get $usuario mac-address]
   :local uptime [/ip hotspot active get $usuario uptime]
   :put ("name=" . $name . " mac=" . $mac . " address=" . $address . " uptime=" . $uptime)
}

/ip hotspot active;:foreach usuario in=[/ip hotspot active find] do={:local name [/ip hotspot active get $usuario user]; :local address [/ip hotspot active get $usuario address];   :local mac [/ip hotspot active get $usuario mac-address];   :local uptime [/ip hotspot active get $usuario uptime];   :put ("name=$name mac=$mac address=$address uptime=$uptime")}

# =============================================================================================
# Pega as velocidades na queue
# Parametros queue simple: name, target-addresses, bytes, total-bytes

/ queues simple
:foreach usuario in=[/queue simple find] do={
   :local name [/queue simple get $usuario name]
   :local address [/queue simple get $usuario target-addresses]
   :local bytes [/queue simple get $usuario bytes]

   :put ( "name:" . $name . " address:" . $address . " bytes:" . $bytes );
}

cmd_queue_simple = """
:foreach user in=[/queue simple find] do={
    :local name [/queue simple get $user name];
    :local address [/queue simple get $user target-addresses];
    :local bytes [/queue simple get $user bytes];
    :put ( "name=" . $name . " address=" . $address . " bytes=" . $bytes );
}
"""

# =============================================================================================
# Usuarios online ARP
# Esta dica vai para aqueles que não usam hotspot ou pppoe.
# É bem simples, vamos marcar a passagem dos pacotes de
# cada ip e imprimí-los em uma src-list:

/ip firewall filter
   add chain=forward out-interface=internet src-address="ip do cliente" action=add-src-to-address-list address-list="online" address-list-timeout=1m
   
   
/ip firewall address-list
:foreach addr in=[find] do={\
   :local name [get $addr name];
   :local address [get $addr address];
   :put ("name=" . $name . " addr=" . $address);
}

:foreach addr in=[find list=online] do={:put [get $addr address]}

# =============================================================================================
# pega só os logins dos clients online

:foreach i in [/ppp active find] do={:put [/ppp active get $i name]}

# =============================================================================================

# Remover cliente do mikrotik
ppp active remove [find name=sfelix2]
remove [find name="fabio b"]

# =============================================================================================

Para complementar o tópico, dando o comando smnpwalk obtenho o seguinte:

snmpwalk -v1 -c public 200.xxx.xxx.xxx .1.3.6.1.4.1.14988.1.1.1.2.1.3.0.79 .98.12.13.192.21
SNMPv2-SMI::enterprises.14988.1.1.1.2.1.3. 0.79.98.12.13.192.21 = INTEGER: -67

Nesse caso, coloquei a OID completa e listou o sinal de um único cliente.

Posso colocar parte da OID, e ele vai mostrar (nesse caso 3 cliente)

snmpwalk -v1 -c public 200.xxx.xxx.xxx .1.3.6.1.4.1.14988.1.1.1.2.1.3.0.79 .98.12
SNMPv2-SMI::enterprises.14988.1.1.1.2.1.3. 0.79.98.12.13.192.21 = INTEGER: -67
SNMPv2-SMI::enterprises.14988.1.1.1.2.1.3. 0.79.98.12.15.64.49 = INTEGER: -83
SNMPv2-SMI::enterprises.14988.1.1.1.2.1.3. 0.79.98.12.16.212.50 = INTEGER: -67


Não sei vai dar quebra de linha, mas após o public vem espaço e o ip do MT
Resumindo tudo: o snmp coleta as informações corretamente, agora como
jogar isso num mrtg para gerar um gráfico do cliente?


Teste que eu fiz e funcionou
snmpwalk.py -v1 200.213.117.20 public .1.3.6.1.2.1.2.2.1.2.1


# =============================================================================================

# Retorno hotspot

#~                            (Campos)
#~                               v
#~ user        = 14988.1.1.5.1.1.3.3232248350
#~ address     = 14988.1.1.5.1.1.5.3232248350
#~ mac-address = 14988.1.1.5.1.1.6.3232248350
#~ uptime      = 14988.1.1.5.1.1.7.3232248350
#~ bytes-in    = 14988.1.1.5.1.1.12.3232248350
#~ bytes-out   = 14988.1.1.5.1.1.13.3232248350
#~ packets-in  = 14988.1.1.5.1.1.14.3232248350
#~ packets-out = 14988.1.1.5.1.1.15.3232248350
