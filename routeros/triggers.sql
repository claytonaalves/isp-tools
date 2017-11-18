-- Lista de comandos a serem executados no(s) mikrotik(s)
CREATE TABLE `mikrotik_cmd_queue` (
    `id` int(10) NOT NULL auto_increment,
    `mikrotik_ip` varchar(15) NOT NULL,
    `action` varchar(30) NOT NULL,
    `params` varchar(255) NOT NULL,
    PRIMARY KEY  (`id`)
) ENGINE=MyISAM;

drop trigger adiciona_ipmac;
drop trigger atualiza_ipmac;
drop trigger remove_ipmac;

delimiter //

CREATE TRIGGER adiciona_ipmac AFTER INSERT ON maclist
FOR EACH ROW
BEGIN
   -- Cria no radius os parametros para fornecer DHCP por radius (OPCIONAL/Pode ser removido)
   -- insert into mikrotik.radcheck values (null, NEW.mac, 'User-Password', '==', '', NEW.numero, '');
   -- insert into mikrotik.radcheck values (null, NEW.mac, 'Auth-Type', ':=', 'Accept', NEW.numero, '');
   -- insert into mikrotik.radreply values (null, NEW.mac, 'Framed-Ip-Address', ':=', NEW.ip);
   -- insert into mikrotik.usergroup values (NEW.mac, 'BLOQUEIO DE MAC-NAO MEXER', 1);

   -- ipbinding_add(self, ip, mac, comment):
   insert into mikrotik_cmd_queue values (null, NEW.gateway, 'ipbinding_add', concat_ws(' ', NEW.ip, NEW.mac, NEW.login));

   -- simplequeue_add(self, ip, banda, comment):
   insert into mikrotik_cmd_queue values (null, NEW.gateway, 'simplequeue_ad', concat_ws(' ', NEW.ip, NEW.banda, NEW.login));

   -- Adiciona a entrada no Access-List (OPCIONAL)
   -- Grava 3 parametros: mac, interface, login
   -- insert into mikrotik_cmd_queue values (null, NEW.gateway, 'AADD', concat_ws(' ', NEW.mac, NEW.obs, NEW.login));
END//

CREATE TRIGGER remove_ipmac AFTER DELETE ON maclist
FOR EACH ROW
BEGIN
   -- Comandos padrao para remover as entradas de parametros DHCP do radius
   -- delete from mikrotik.radcheck where UserName=OLD.mac and numero=OLD.numero;
   -- delete from mikrotik.radreply where UserName=OLD.mac;
   -- delete from mikrotik.usergroup where UserName=OLD.mac;

   -- ipbinding_rem(self, ip)
   insert into mikrotik_cmd_queue values (null, OLD.gateway, 'ipbinding_rem', OLD.ip);

   -- simplequeue_rem(self, ip):
   insert into mikrotik_cmd_queue values (null, OLD.gateway, 'simplequeue_rem', OLD.ip);

   -- Remove a entrada do Access-List (OPCIONAL)
   -- insert into mikrotik_cmd_queue values (null, OLD.gateway, 'AREM', OLD.mac);
END//

CREATE TRIGGER atualiza_ipmac AFTER UPDATE ON maclist
FOR EACH ROW
BEGIN
   -- OPCIONAL
   -- update mikrotik.radcheck set UserName=NEW.mac where UserName=OLD.mac and numero=OLD.numero;
   -- update mikrotik.radreply set Value=NEW.ip, UserName=NEW.mac where UserName=OLD.mac and Attribute='Framed-Ip-Address';
 
   -- Cliente esta sendo bloqueado
   if (NEW.situacao='b') then
      -- insert into mikrotik_cmd_queue values (null, NEW.gateway, 'BLO', NEW.ip);
      -- insert into mikrotik_cmd_queue values (null, NEW.gateway, 'AREM', OLD.mac); -- OPCIONAL
       insert into mikrotik_cmd_queue values (null, OLD.gateway, 'ipbinding_rem', OLD.ip);
       insert into mikrotik_cmd_queue values (null, OLD.gateway, 'simplequeue_rem', OLD.ip);

   -- Cliente esta sendo liberado
   -- elseif (NEW.situacao='a') and (OLD.situacao='b') then
   --    insert into mikrotik_cmd_queue values (null, NEW.gateway, 'LIB', NEW.ip);
   --    insert into mikrotik_cmd_queue values (null, NEW.gateway, 'AADD', concat_ws(' ', NEW.mac, NEW.obs, NEW.login)); -- OPCIONAL

   -- Atualizacao normal
   else
      -- insert into mikrotik_cmd_queue values (null, NEW.gateway, 'UPD', concat_ws(' ', NEW.ip, NEW.mac, NEW.banda, OLD.ip, NEW.login));
      -- insert into mikrotik_cmd_queue values (null, NEW.gateway, 'AUPD', concat_ws(' ', NEW.mac, OLD.mac, NEW.obs, NEW.login));
      insert into mikrotik_cmd_queue values (null, NEW.gateway, 'ipbinding_add', concat_ws(' ', NEW.ip, NEW.mac, NEW.login));
      insert into mikrotik_cmd_queue values (null, NEW.gateway, 'simplequeue_ad', concat_ws(' ', NEW.ip, NEW.banda, NEW.login));
   end if;
END//

delimiter ;

-- --------------------------------------------------
-- Daqui pra baixo, sao apenas inserções para testes.
-- --------------------------------------------------
insert into maclist values ('a','FF:FF:FF:FF:FF:FF','1.2.3.4','vigotecnologia','00000','64-64','189.77.217.27','','',1,'','');
insert into maclist values ('a','FF:FF:FF:FF:FF:FF','1.2.3.4','vigotecnologia','00000','64-64','189.10.107.3','','',1,'','');
insert into maclist values ('a','FF:FF:FF:FF:FF:FF','1.2.3.4','vigotecnologia','00000','64-64','201.73.173.253 ','','',1,'','');

update maclist set 
   mac="FF:FF:FF:FF:FF:AA", 
   ip="4.3.2.1", 
   banda="64-32", 
   gateway="189.77.217.27", 
   obs="", 
   valido="N", 
   ipredirecionado="",
   tipo="REDIRECT" 
where numero="00000";
