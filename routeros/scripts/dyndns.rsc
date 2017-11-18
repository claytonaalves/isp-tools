:log info "DDNS: Begin"

:global ddns-user "user do ddns"
:global ddns-pass "senhado ddns"
:global ddns-host "link do ddns ex:servidor10.changeip.org"
:global ddns-interface "Link1"
:global ddns-ip [ /ip address get [/ip address find interface=$ddns-interface] address ]

:if ([ :typeof $ddns-lastip ] = nil ) do={ \
   :global ddns-lastip 0.0.0.0/0 
}

:if ([ :typeof $ddns-ip ] = nil ) do={ \
   :log info ("DDNS: No ip address present on " . $ddns-interface . ", please check.")
} else={
   :if ($ddns-ip != $ddns-lastip) do={
      :log info "DDNS: Sending UPDATE!"
      :log info [ /tool dns-update name=$ddns-host address=[ick $ddns-ip 0 [:find $ddns-ip "/"] ] key-name=$ddns-user key=$ddns-pass ]
      :global ddns-lastip $ddns-ip
   } else={
      :log info "DDNS: No change"
   }
}

:log info "DDNS: End"


http://www.changeip.com/
