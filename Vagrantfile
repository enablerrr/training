
Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/trusty64"
 #config.vm.provision "shell", inline: "ssh-copy-id '-p 2222 root@127.0.0.1'"

    config.vm.provider "virtualbox" do |vb|
     #To fix "VTX ERROR" >> https://dannyda.com/2020/09/21/how-to-enable-nested-hypervisor-virtualization-on-proxmox-ve-pve/
      vb.memory = 1024
      vb.cpus = 1
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

      machine.vm.provision :ansible_local do |ansible|
        ansible.playbook = "playbook-master.yml"
        ansible.verbose = true
        ansible.install = true
        ansible.limit = "all" # or only "nodes" group, etc.
        ansible.inventory_path = "hosts"
      end
  end    
end
