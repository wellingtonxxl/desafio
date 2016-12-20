#!/bin/bash
#Shell Script
#instalando pacotes essenciais


 curl -sL https://deb.nodesource.com/setup_6.x -o nodesource_setup.sh
 sudo bash nodesource_setup.sh
 sudo apt-get update
 sudo apt-get install -y ansible
 sudo apt-get install -y build-essential
 sudo apt-get install -y nodejs
 sudo apt-get install -y nginx
 sudo apt-get install -y apache2
 sudo apt-get install -y apache2-utils
 sudo apt-get install -y libapache2-mod-fastcgi
 sudo apt-get install -y php-fpm

 sudo mkdir /home/ubuntu/desafio
echo "passando por aqui ....."
# sudo apt-get install -y epel-release
# sudo apt-get install -y npm
# sudo npm install -y express
# sudo apt-get install -y nginx
# sudo npm install pm2@latest -g

#starting apache2 and nginx
#sudo mkdir /home/ubuntu/desafio/
#sudo pm2 startup

#sudo /etc/init.d/apache2 start
#sudo systemctl restart nginx
#sudo systemctl enable nginx

#sudo env PATH=$PATH:/usr/local/bin pm2 startup ubuntu -u sammy

#sudo pm2 start /home/ubuntu/desafio/clusters.js

