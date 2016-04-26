# coding: utf8
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
import logging

logging.basicConfig(
    level=logging.INFO,
    format='%(asctime)s - %(message)s',
    datefmt= '%H:%M:%S')

bloqueio_logger = logging.FileHandler('/var/log/vigo/bloqueio.log')
bloqueio_logger.setLevel(logging.INFO)
formatter = logging.Formatter('%(asctime)s - %(message)s')
bloqueio_logger.setFormatter(formatter)

desbloqueio_logger = logging.FileHandler('/var/log/vigo/desbloqueio.log')
desbloqueio_logger.setLevel(logging.INFO)
formatter = logging.Formatter('%(asctime)s - %(message)s')
desbloqueio_logger.setFormatter(formatter)

logging.getLogger('bloqueio_logger').addHandler(bloqueio_logger)
logging.getLogger('desbloqueio_logger').addHandler(desbloqueio_logger)

log_bloqueio = logging.getLogger('bloqueio_logger')
log_desbloqueio = logging.getLogger('desbloqueio_logger')

