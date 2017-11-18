class ppp(connection_type):

    def GetSNMPActive(self):
        """
        Le a lista de usuarios ativos por snmp
        Retorna um dicionario com os usuarios ativos
        """
        r1 = re.compile('<pppoe-(.+)>')
        actList = []

        for line in self.parent.GetSNMPData("IfDescr"):
            match = r1.search(line)
            if not match:
                continue
            
            login = match.group(1)
            newUser = User()
            newUser.user = login
            newUser.address = ''
            newUser.mac = ''
            newUser.uptime = ''
            actList.append(newUser)
        
        return actList
