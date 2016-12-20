#!/bin/bash
#Shell Script
#iniciando servicos

 sudo apt-get install -y epel-release
 sudo apt-get install -y npm
 sudo npm install -y express
 sudo npm install pm2@latest -g

#starting apache2 and nginx
sudo pm2 startup

sudo /etc/init.d/apache2 start
sudo systemctl restart nginx
sudo systemctl enable nginx

sudo env PATH=$PATH:/usr/local/bin pm2 startup ubuntu -u sammy

sudo pm2 start /home/ubuntu/desafio/clusters.js

