Vagrant.configure("2") do |config|
 config.vm.box = "ubuntu/xenial64"
 config.vm.hostname = "desafioVM"
 config.vm.network "forwarded_port", guest: 80, host: 8080

config.vm.provision "ansible" do |ansible|
  ansible.playbook = "roles/nginx/tasks/main.yml"
end

config.vm.provision "shell", inline: <<-SHELL
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
 SHELL
end
