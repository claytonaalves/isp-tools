import base64
from pyDes import *

def decodifica_senha_gateway(senha_base64):
    key = base64.decodestring('606eiR1frvDWq5+4wcXyQ7jPfnxLxY64')
    iv = base64.decodestring('D28TLjXCzfk=')
    data = base64.decodestring(senha_base64)
    k = triple_des(key, CBC, IV=iv, pad=None, padmode=PAD_PKCS5)
    d = k.decrypt(data)
    return d

