/que sim;
:foreach user in=[find] do={
   :local params;
   :local paramA;
   :local paramB;
   :local tam;
   :local pos;
   
   :local limitat;
   :local maxlimit;
   
   :set params [get $user limit-at];
   :set pos [:find $params "/" -1];
   :set tam [:len $params];
   :set paramA [:tonum [:pick $params 0 ($pos-1)]];
   :set paramB [:tonum [:pick $params ($pos+1) ($tam-1)]];
   
 
   # Limit-at
   :set params [get $user limit-at];
   :set pos [:find $params "/" -1];
   :set tam [:len $params];
   :set paramA (([:tonum [:pick $params 0 ($pos-1)]] * 0.8) + 1);
   :set paramB (([:tonum [:pick $params ($pos+1) ($tam-1)]] / 2) + 1);
   :set limitat ([:tostr $paramA] . "k/" . [:tostr $paramB] . "k");

   # Max-limit
   :set params [get $user max-limit];
   :set pos [:find $params "/" -1];
   :set tam [:len $params];
   :set paramA (([:tonum [:pick $params 0 ($pos-1)]] / 2) + 1);
   :set paramB (([:tonum [:pick $params ($pos+1) ($tam-1)]] / 2) + 1);
   :set maxlimit ([:tostr $paramA] . "k/" . [:tostr $paramB] . "k");

   :log info ([get $user name] . " " . $limitat . " - " . $brstlim . " " . $brstthr . " " . $maxlimit);
   set $user limit-at=$limitat max-limit=$maxlimit burst-limit=$brstlim burst-threshold=$brstthr;
}
