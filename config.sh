#!/bin/bash
#Shell Script
#instalando pacotes essenciais


 curl -sL https://deb.nodesource.com/setup_6.x -o nodesource_setup.sh
 sudo bash nodesource_setup.sh
 sudo apt-get update
 sudo apt-get install -y ansible
 sudo apt-get install -y build-essential
 sudo apt-get install -y nodejs
 sudo apt-get install -y npm
 sudo npm install -y express
 sudo apt-get install -y apache2
 sudo apt-get install -y libapache2-mod-fastcgi
 sudo apt-get install -y php-fpm
 sudo apt-get install -y nginx
 

 #starting apache2 and nginx

sudo mkdir /home/ubuntu/desafio/
sudo /etc/init.d/nginx start
sudo /etc/init.d/apache2 start

