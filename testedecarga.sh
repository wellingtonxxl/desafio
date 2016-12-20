#!/bin/bash
#teste de carga da aplicacao
#
#

ab -n 100000 -c 100 http://127.0.0.1:3000/ > /home/ubuntu/testedecarga.log

