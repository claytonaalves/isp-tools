:local ipaddr;
:set ipaddr [/ip arp find address=10.1.1.254]
:if ( $ipaddr != "" ) do={/ ip arp remove $ipaddr}

:set ipaddr [/queue simple find target-addresses=10.1.1.254/32]
:if ( $ipaddr != "" ) do={/ queue simple remove $ipaddr}

/ ip arp add address=10.1.1.254 mac-address=FF:FF:FF:FF:FF:FF interface=mac disabled=no

/ queue simple add name="2oficio@inter-via.com7288" target-addresses=10.1.1.254/32 \
dst-address=0.0.0.0/0 interface=all parent=none priority=8 \
queue=default/default limit-at=32000/64000 \
max-limit=32000/64000 \
total-queue=default disabled=no

/ file remove individual_arp.rsc
