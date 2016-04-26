# 
# Copyright (c) 2015 Clayton de Almeida Alves
# 
# Permission is hereby granted, free of charge, to any person obtaining a copy of
# this software and associated documentation files (the "Software"), to deal in
# the Software without restriction, including without limitation the rights to
# use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of
# the Software, and to permit persons to whom the Software is furnished to do so,
# subject to the following conditions:
# 
# The above copyright notice and this permission notice shall be included in all
# copies or substantial portions of the Software.
# 
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS
# FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR
# COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER
# IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN
# CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

import subprocess

def desconecta_cliente(user_connection):
    if not user_connection.connected:
        return
    cmd = 'echo "User-Name:={0}, Framed-IP-Address={1}" | radclient -r 2 {2}:1700 disconnect mikrotik'
    cmd = cmd.format(user_connection.username,
                     user_connection.framed_ip_address,
                     user_connection.nas_ip_address)
    subprocess.call(cmd, shell=True)

#if __name__=="__main__":
    #desconecta_cliente('clayton', '1.1.1.1', '2.2.2.2')

