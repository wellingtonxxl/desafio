Vagrant.configure("2") do |config|
 config.vm.box = "ubuntu/xenial64"
 config.vm.hostname = "desafioVM"
 config.vm.network "private_network", type: "dhcp"
 
#provisioning with shell
 config.vm.provision "shell", path: "config.sh"

#provisionin packages and files
 config.vm.provision "ansible" do |ansible|
  ansible.playbook = "playbook.yml"
 end

#restart apache2 and nginx
 config.vm.provision "shell", inline: <<-SHELL
  sudo service apache2 reload
  sudo service nginx reload
 SHELL
end
