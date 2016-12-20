Vagrant.configure("2") do |config|
 config.vm.box = "ubuntu/xenial64"
 config.vm.hostname = "desafioVM"
 config.vm.network "private_network", type: "dhcp"  

 config.vm.provision "shell", path: "config.sh"

 config.vm.provision "ansible" do |ansible|
  ansible.playbook = "playbook.yml"
 end

 config.vm.provision "shell", path: "config2.sh"

 config.vm.provision "shell", inline: <<-SHELL
  sudo service apache2 reload
  sudo service nginx reload
 SHELL
end
