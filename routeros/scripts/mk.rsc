# The Code

## Generic IP address list input
## Based on a script written by Sam Norris, ChangeIP.com 2008
## Edited by Andrew Cox, AccessPlus.com.au 2008
:if ( [/file get [/file find name=ipaddress.txt] size] > 0 ) do={
# Remove exisiting addresses from the current Address list
/ip firewall address-list remove [/ip firewall address-list find list=MY-IP-LIST]

:global content [/file get [/file find name=ipaddress.txt] contents] ;
:global contentLen [ :len $content ] ;

:global lineEnd 0;
:global line "";
:global lastEnd 0;

:do {
      :set lineEnd [:find $content "\n" $lastEnd ] ;
      :set line [:pick $content $lastEnd $lineEnd] ;
      :set lastEnd ( $lineEnd + 1 ) ;
      #If the line doesn't start with a hash then process and add to the list
      :if ( [:pick $line 0 1] != "#" ) do={

     :local entry [:pick $line 0 ($lineEnd -1) ]
     :if ( [:len $entry ] > 0 ) do={
        /ip firewall address-list add list=MY-IP-LIST address=$entry
     }
   }
} while ($lineEnd < $contentLen)
}


# ====================================================================
# How to use

# This will grab IP entries for a simple list in the format

   #This is a comment
   #Blah blah blah
   1.1.1.1
   2.2.2.0/24
   3.3.3.3
   4.4.4.128/26

# Just substitute the address-list and filename you want to pull from 
# (for anyone else who wants to use it with their own generated lists)

# You can use this hand-in-hand with a fetch script to retrive the list 
# from a remote site then process it.

# ====================================================================
# Code for fetching

/tool fetch address=server.somewhere.tld host=server.somewhere.tld mode=http src-path=folder/anotherfolder/ipaddress.txt
:delay 10
#Replace with whatever name you have called the processing script
/system script run add-ip-addresses