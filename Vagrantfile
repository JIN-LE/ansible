Vagrant.configure("2") do |config|

######################### Ansible node01 #################################

  config.vm.define "ansible-node01" do |cfg1|
   cfg1.vm.box = "centos/7"
   cfg1.vm.host_name = "ansible-node01"
   cfg1.vm.provision "shell", run: "always", inline: "yum -y install net-tools"
   cfg1.vm.network "private_network" , ip: "172.16.1.11" , auto_config: false
   cfg1.vm.provision "shell", run: "always", inline: "ifconfig eth1 172.16.1.11 netmask 255.255.255.0 up"
   cfg1.vm.provision "shell", inline: "ifconfig eth1 down"
   cfg1.vm.provision "shell", inline: "ifconfig eth1 up"
   cfg1.vm.provision "shell", inline: "sed -i 's/PasswordAuthentication no/PasswordAuthentication yes/g' /etc/ssh/sshd_config"
   cfg1.vm.provision "shell", inline: "systemctl restart sshd"
   cfg1.vm.network "forwarded_port" , guest: 22, host:60011, auto_correct: true, id: "ssh"
  end

######################### Ansible node02 #################################

  config.vm.define "ansible-node02" do |cfg2|
   cfg2.vm.box = "centos/7"
   cfg2.vm.host_name = "ansible-node02"
   cfg2.vm.provision "shell", run: "always", inline: "yum -y install net-tools"
   cfg2.vm.network "private_network" , ip: "172.16.1.12" , auto_config: false
   cfg2.vm.provision "shell", run: "always", inline: "ifconfig eth1 172.16.1.12 netmask 255.255.255.0 up"
   cfg2.vm.provision "shell", inline: "ifconfig eth1 down"
   cfg2.vm.provision "shell", inline: "ifconfig eth1 up"
   cfg2.vm.provision "shell", inline: "sed -i 's/PasswordAuthentication no/PasswordAuthentication yes/g' /etc/ssh/sshd_config"
   cfg2.vm.provision "shell", inline: "systemctl restart sshd"
   cfg2.vm.network "forwarded_port" , guest: 22, host:60012, auto_correct: true, id: "ssh"
  end

######################### Ansible node03 #################################

  config.vm.define "ansible-node03" do |cfg3|
   cfg3.vm.box = "centos/7"
   cfg3.vm.host_name = "ansible-node03"
   cfg3.vm.provision "shell", run: "always", inline: "yum -y install net-tools"
   cfg3.vm.network "private_network" , ip: "172.16.1.13" , auto_config: false
   cfg3.vm.provision "shell", run: "always", inline: "ifconfig eth1 172.16.1.13 netmask 255.255.255.0 up"
   cfg3.vm.provision "shell", inline: "ifconfig eth1 down"
   cfg3.vm.provision "shell", inline: "ifconfig eth1 up"
   cfg3.vm.provision "shell", inline: "sed -i 's/PasswordAuthentication no/PasswordAuthentication yes/g' /etc/ssh/sshd_config"
   cfg3.vm.provision "shell", inline: "systemctl restart sshd"
   cfg3.vm.network "forwarded_port" , guest: 22, host:60013, auto_correct: true, id: "ssh"
  end

######################### Ansible server #################################

  config.vm.define "ansible-server" do |cfg|
   cfg.vm.box = "centos/7"
   cfg.vm.host_name = "ansible-server"
   cfg.vm.provision "shell", run: "always", inline: "yum -y install net-tools"
   cfg.vm.network "private_network" , ip: "172.16.1.10" , auto_config: false
   cfg.vm.provision "shell", run: "always", inline: "ifconfig eth1 172.16.1.10 netmask 255.255.255.0 up"
   cfg.vm.provision "shell", inline: "ifconfig eth1 down"
   cfg.vm.provision "shell", inline: "ifconfig eth1 up"
   cfg.vm.network "forwarded_port" , guest: 22, host: 60010, auto_correct: true, id: "ssh"
   cfg.vm.synced_folder "../data", "vagrant", disabled: true
   cfg.vm.provision "shell", inline: "yum -y install epel-release"
   cfg.vm.provision "shell", inline: "yum -y install ansible"
   cfg.vm.provision "file", source: "ansible_env_ready.yml", destination: "ansible_env_ready.yml"
   cfg.vm.provision "shell", inline: "ansible-playbook ansible_env_ready.yml"
   cfg.vm.provision "shell", path: "add_ssh_auth.sh", privileged: false
  end

end
