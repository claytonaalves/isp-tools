
# A minha grande dificuldade era que nos conceitos normais de script 
# para esta funcionalidade usariamos o comando ":totime" para alterar 
# o tipo de vari�vel da data que � uma string para um tipo de vari�vel 
# contendo data (:local time [/system clock get time]), mas sempre deu 
# errado em diversas vers�es que testei. Resolvi inventar um pouco...

# segue abaixo um exemplo de script que compara o hor�rio atual com o 
# hor�rio que iniciar� e finalizar� a execu��o do script, caso o hor�rio 
# atual corresponda com as condi��es, ele roda os comandos, do contr�rio 
# ele executa outros comandos que desazem que foi executado no hor�rio previsto, fica assim:
# para come�ar vamos configurar um cliente ntp:

/system ntp client set enabled=yes mode=unicast primary-ntp=200.160.0.8 secondary-ntp=200.189.40.8

# neste script de exemplo, a hora inicial dos comandos � de 22:00 e a hora 
# final � de 07:00, ou seja das 22:00 �s 07:00 os clientes que acessam a 
# 129k de download e upload ser�o modificados automaticamente para 400k, da 
# mesma forma os clientes que navegam a 123k passar�o a acessar com 256k 
# respectivamente, fora deste hor�rio o comandos de desativa��o ser�o executados 
# e os clientes voltam �s velocidades originais.

# os comandos dentro de do={} rodam se as condi��es s�o verdadeiras, 
# e os comandos dentro de else={} rodas os comandos caso as condi��es sejam falsas.

:local btini 22
:local btfim 7
:if ([:tonum [pick [/system clock get time] 0 2 ]] >= $btini || [:tonum [pick [/system clock get time] 0 2 ]] < $btfim ) \
do={
   /que sim set [find limit-at="129k/129k"] limit-at="400k/400k" max-limit="400k/400k"
   /que sim set [find limit-at="123k/123k"] limit-at="256k/256k" max-limit="256k/256k"
} else={
   /que sim set [find limit-at="400k/400k"] limit-at="129k/129k" max-limit="129k/129k"
   /que sim set [find limit-at="256k/256k"] limit-at="123k/123k" max-limit="123k/123k"
}

# Mine version

:local curTime ([:totime ([/system clock get time])]);
:local begTime ([:totime "20:00:00"]);
:local endTime ([:totime "20:14:00"]);

:if ($curTime>=$begTime && $curTime<$endTime) do={
   :log info "Dentro do periodo...";
} else={
   :log info "Fora do periodo...";
}

# ===========

# Por fim coloquem um agendamento para rodar este script a cada 5 minutos por assim:

/system scheduler add comment="" disabled=no interval=5m name=#nomedoagendamento# on-event=#nomedoscript# policy=\
reboot,read,write,policy,test,passw ord,sniff start-date=jan/01/1970 \
start-time=00:00:00

# Modifiquem � vontade e me ajudem a colocar este script para rodar com precis�o de minutos e segundos.

