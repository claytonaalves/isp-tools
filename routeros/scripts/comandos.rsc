# ========================================================
# Ativar SNMP
# ========================================================

/ snmp set enabled=yes contact="your@mail.com" location="SomeCountry" 
/ snmp community set public name="public" address=192.168.0.5/32 read-access=yes

# ========================================================
# Mine version
# ========================================================

:local curTime ([:totime ([/system clock get time])]);
:local begTime ([:totime "20:00:00"]);
:local endTime ([:totime "20:14:00"]);

:if ($curTime>=$begTime && $curTime<$endTime) do={
   :log info "Dentro do periodo...";
} else={
   :log info "Fora do periodo...";
}

# ========================================================
# Script de importacao tabela arp e individual arp
# ========================================================

#~ importa_geral
:log warning "Importando tabela arp GERAL";
/import tabela_arp.rsc;

#~ importa_individual
:log warning "Importando tabela arp INDIVIDUAL";
/import individual_arp.rsc;


:local check;
:set check [/file find name=tabela_arp.rsc];
:if ( $check != "" ) do={
   /system script run importa_geral;
}

:set check [/file find name=individual_arp.rsc];
:if ( $check != "" ) do={
   /system script run importa_individual;
}

# ========================================================

{
:local content ""
:local ip;
/file print file=ip
:foreach i in=[/ip address find interface="ether2"] do={
      :set ip [/ip address get $i address];
      :set content ("$content\r\n/ip address add address=$ip interface=ether2");
}
/file set ip.txt contents=$content;
}

# ========================================================

:foreach q in=([/que sim find]) do={
   :local lim [/que sim get $q limit-at];
   :local p [:tonum [:find $lim "/" -1]];
   :local upsp ([:tonum [:pick $lim 0 $p]]*2);
   :local dosp ([:tonum [:pick $lim ($p+1) 10]]*2);
   :log info ($upsp . " -- " . $dosp);
}

# ========================================================
# Duplica

/queue simple
:foreach q in=[find] do={
   :local p;
   :local qn [get $q name];
   
   :set p [:tonum [:find $qn "-Double" -1]];
   
   :if ([:typeof $p]=nothing) do={
      :local newName ($qn . "-Double")
      :local lim [get $q limit-at];
      :set p [:tonum [:find $lim "/" -1]];
      :local upsp [:tostr ([:tonum [:pick $lim 0 $p]]*2)];
      :local dosp [:tostr ([:tonum [:pick $lim ($p+1) 30]]*2)];
      :local limAt ($upsp . "/" . $dosp);
      
      :set lim [get $q max-limit];
      :set p [:tonum [:find $lim "/" -1]];
      :set upsp [:tostr ([:tonum [:pick $lim 0 $p]]*2)];
      :set dosp [:tostr ([:tonum [:pick $lim ($p+1) 30]]*2)];
      :local limMa ($upsp . "/" . $dosp);
      
      set $q name=$newName limit-at=$limAt max-limit=$limMa
   }
}

# Divide

/queue simple
:foreach q in=[find] do={
   :local p;
   :local qn [get $q name];
   
   :set p [:tonum [:find $qn "-Double" -1]];
   
   :if ($p>0) do={
      :local newName [:pick $qn 0 $p]
      :local lim [get $q limit-at];
      :set p [:tonum [:find $lim "/" -1]];
      :local upsp [:tostr ([:tonum [:pick $lim 0 $p]]/2)];
      :local dosp [:tostr ([:tonum [:pick $lim ($p+1) 30]]/2)];
      :local limAt ($upsp . "/" . $dosp);
      
      :set lim [get $q max-limit];
      :set p [:tonum [:find $lim "/" -1]];
      :set upsp [:tostr ([:tonum [:pick $lim 0 $p]]/2)];
      :set dosp [:tostr ([:tonum [:pick $lim ($p+1) 30]]/2)];
      :local limMa ($upsp . "/" . $dosp);
   
      set $q name=$newName limit-at=$limAt max-limit=$limMa
   }
}


# ========================================================
# ========================================================
# ========================================================

:local curTime ([:totime ([/system clock get time])]);
:local begTime ([:totime "20:00:00"]);
:local endTime ([:totime "20:14:00"]);

:if ($curTime>=$begTime && $curTime<$endTime) do={
   /queue simple
   :foreach q in=[find] do={
      :local p;
      :local qn [get $q name];
      
      :set p [:tonum [:find $qn "-Double" -1]];
      
      :if ([:typeof $p]=nothing) do={
         :local newName ($qn . "-Double")
         :local lim [get $q limit-at];
         :set p [:tonum [:find $lim "/" -1]];
         :local upsp [:tostr ([:tonum [:pick $lim 0 $p]]*2)];
         :local dosp [:tostr ([:tonum [:pick $lim ($p+1) 30]]*2)];
         :local limAt ($upsp . "/" . $dosp);
         
         :set lim [get $q max-limit];
         :set p [:tonum [:find $lim "/" -1]];
         :set upsp [:tostr ([:tonum [:pick $lim 0 $p]]*2)];
         :set dosp [:tostr ([:tonum [:pick $lim ($p+1) 30]]*2)];
         :local limMa ($upsp . "/" . $dosp);
         
         set $q name=$newName limit-at=$limAt max-limit=$limMa
      }
}
} else={
   /queue simple
   :foreach q in=[find] do={
      :local p;
      :local qn [get $q name];
      
      :set p [:tonum [:find $qn "-Double" -1]];
      
      :if ($p>0) do={
         :local newName [:pick $qn 0 $p]
         :local lim [get $q limit-at];
         :set p [:tonum [:find $lim "/" -1]];
         :local upsp [:tostr ([:tonum [:pick $lim 0 $p]]/2)];
         :local dosp [:tostr ([:tonum [:pick $lim ($p+1) 30]]/2)];
         :local limAt ($upsp . "/" . $dosp);
         
         :set lim [get $q max-limit];
         :set p [:tonum [:find $lim "/" -1]];
         :set upsp [:tostr ([:tonum [:pick $lim 0 $p]]/2)];
         :set dosp [:tostr ([:tonum [:pick $lim ($p+1) 30]]/2)];
         :local limMa ($upsp . "/" . $dosp);
      
         set $q name=$newName limit-at=$limAt max-limit=$limMa
      }
   }
}



# ========================================================
# ========================================================
# ========================================================
# Com burst

:local curTime ([:totime ([/system clock get time])]);
:local begTime ([:totime "15:00:00"]);
:local endTime ([:totime "20:00:00"]);

:if ($curTime>=$begTime && $curTime<$endTime) do={
   /queue simple
   :foreach q in=[find comment=""] do={
      :log info ("Dobrando " . [get $q name]);
      
      :local lim [get $q limit-at];
      :local p [:find $lim "/" -1];
      :local upsp ([:pick $lim 0 $p]*2);
      :local dosp ([:pick $lim ($p+1) 30]*2);
      :local limAt ($upsp . "/" . $dosp);
      
      :set lim [get $q max-limit];
      :set p [:find $lim "/" -1];
      :set upsp ([:pick $lim 0 $p]*2);
      :set dosp ([:pick $lim ($p+1) 30]*2);
      :local limMa ($upsp . "/" . $dosp);
      :local limBu (($upsp*2) . "/" . ($dosp*2));
      :local buThr ((($upsp*75)/100) . "/" . (($dosp*75)/100))

      set $q limit-at=$limAt max-limit=$limMa burst-limit=$limBu burst-threshold=$buThr comment="Double"
}
} else={
   /queue simple
   :foreach q in=[find comment="Double"] do={
      :log info ("Retornando " . [get $q name]);
      
      :local lim [get $q limit-at];
      :set p [:find $lim "/" -1];
      :local upsp ([:pick $lim 0 $p]/2);
      :local dosp ([:pick $lim ($p+1) 30]/2);
      :local limAt ($upsp . "/" . $dosp);
      
      :set lim [get $q max-limit];
      :set p [:find $lim "/" -1];
      :set upsp ([:pick $lim 0 $p]/2);
      :set dosp ([:pick $lim ($p+1) 30]/2);
      :local limMa ($upsp . "/" . $dosp);
      :local limBu (($upsp*2) . "/" . ($dosp*2));
      :local buThr ((($upsp*75)/100) . "/" . (($dosp*75)/100))

      set $q limit-at=$limAt max-limit=$limMa burst-limit=$limBu burst-threshold=$buThr comment=""
   }
}