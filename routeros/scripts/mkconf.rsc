 /radius add address=189.112.75.27 secret=mikrotik service=ppp timeout=00:00:01
 
 /radius incoming set accept=yes port=1700



:global ddns-user "coloque seu login do changeip"
:global ddns-pass "sua senha do changeip"
:global ddns-host "o seu dominio por exemplo: mikrotik.changeip.net"
:global ddns-interface "aki é o adaptador ethernet q da o acesso a internet ao MK - Link de internet"
:global ddns-ip [ /ip address get [/ip address find interface=$ddns-interface] address ]
:if ([ :typeof $ddns-lastip ] = nil ) do={ :global ddns-lastip 0.0.0.0/0 }

:if ([ :typeof $ddns-ip ] = nil ) do={
   :log info ("DDNS: No ip address present on " . $ddns-interface . ", please check.")
} else={
   :if ($ddns-ip != $ddns-lastip) do={
      :log info [ /tool dns-update name=$ddns-host address=[..pick $ddns-ip 0 [:find $ddns-ip "/"] ] key-name=$ddns-user key=$ddns-pass ]
      :global ddns-lastip $ddns-ip
   } else={
   }
}



[/ip firewall nat find chain=dstnat hotspot=from-client]