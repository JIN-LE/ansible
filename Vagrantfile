############# Ansible node01 ##################

  config.vm.define "ansible-node01" do |cfg1|
    cfg1.vm.box = "centos/7"
    cfg1.vm.host_name = "ansible-node01"
    cfg1.vm.network "private_network" , ip: "172.16.1.11"
    cfg1.vm.network "forwarded_port" , guest: 22, host:60011, auto_correct: true, id: "ssh"
  end

############# Ansible node02 ##################

  config.vm.define "ansible-node02" do |cfg2|
    cfg2.vm.box = "centos/7"
    cfg2.vm.host_name = "ansible-node02"
    cfg2.vm.network "private_network" , ip: "172.16.1.12"
    cfg2.vm.network "forwarded_port" , guest: 22, host:60012, auto_correct: true, id: "ssh"
  end
############# Ansible node03 ##################

  config.vm.define "ansible-node03" do |cfg3|
    cfg3.vm.box = "centos/7"
    cfg3.vm.host_name = "ansible-node03"
    cfg3.vm.network "private_network" , ip: "172.16.1.13"
    cfg3.vm.network "forwarded_port" , guest: 22, host:60013, auto_correct: true, id: "ssh"
  end
