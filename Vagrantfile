
Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/xenial64"
  # config.ssh.private_key_path = "C:/Users/stagiaire01/.ssh/id_rsa"
  # config.ssh.forward_agent = true
  # config.vm.provision "shell", inline: "apt install sshpass fish vim -y"
  # config.vm.provision "shell", inline: "ssh-copy-id '-p 2222 root@127.0.0.1'"

    config.vm.provider "virtualbox" do |vb|
      vb.memory = 2048
      vb.cpus = 2
    end

  config.vm.define "node1" do |machine|
    machine.vm.hostname = "node1"
    machine.vm.network "public_network", nat: "eth0", ip: "172.25.0.132"
  end

  config.vm.define "node2" do |machine|
    machine.vm.hostname = "node2"
    machine.vm.network "public_network", nat: "eth0", ip: "172.25.0.133"
  end

  config.vm.define "master" do |machine|
    machine.vm.hostname = "master"
    machine.vm.network "public_network", nat: "eth0", ip: "172.25.0.131"

      machine.vm.provision :ansible do |ansible|
        # ansible.install_mode = "default"
        # ansible.install_mode = "pip"
        # ansible.version = "2.7.7"
        ansible.playbook = "playbook-master.yml"
        # ansible.verbose = true
        # ansible.install = true
        # ansible.limit = "all" # or only "nodes" group, etc.
        # ansible.inventory_path = "hosts"
      end
  end    
end