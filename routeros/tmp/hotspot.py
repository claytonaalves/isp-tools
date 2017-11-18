class hotspot(connection_type):

    def GetSNMPActive(self):
        """
        - Le a lista de usuarios ativos por snmp
        - Retorna uma lista de objetos 'User' que sao os usuarios ativos
        - Ex: lstAtivos = Mikrotik('0.0.0.0').Hotspot.Active()
        """

        rOid = re.compile('14988\.1\.1\.5\.1\.1\.([0-9]+)\.([0-9]{1,15})') # Campo e UserID
        rUsr = re.compile('STRING: \"(.+)"$')  # username
        rAdd = re.compile('IpAddress: (.+)$')  # IP
        rMac = re.compile('Hex-STRING: (.+)$') # Mac
        rTim = re.compile('INTEGER: (.+)$')    # UpTime
        
        actList = {}

        # Alterei a oid de enterprises.14988.1.1.5.1.1 pra enterprises.14988.1.1.5.1.1.3
        # pra limitar a busca e ficar mais rapido
        for line in self.parent.GetSNMPData("enterprises.14988.1.1.5.1.1.3"):
            match = rOid.search(line)
            if not match:
                continue
            
            field = match.group(1)
            uID   = match.group(2)
            
            if uID not in actList:
                actList[uID] = User()
            
            if field == '3': # Username
                actList[uID].username = rUsr.search(line).group(1)
            elif field == '5':
                actList[uID].address = rAdd.search(line).group(1)
            elif field == '6':
                actList[uID].mac = rMac.search(line).group(1).strip().replace(' ',':')
            elif field == '7':
                actList[uID].uptime = rTim.search(line).group(1)
            else:
                pass
        
        return actList.values()
