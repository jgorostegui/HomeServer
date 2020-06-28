Vagrant.require_version ">= 2.0.0"

# https://www.vagrantup.com/docs/provisioning/ansible
Vagrant.configure(2) do |config|
  config.vm.box = "ubuntu/focal64"
  config.vm.define "HomeServer" do |machine|
  
    machine.vm.network "public_network", ip: "192.168.1.150", bridge: 'enp36s0'
    machine.vm.hostname = "HomeServer"
    machine.vm.synced_folder ".", "/home/vagrant/HomeServer"
    machine.ssh.insert_key = false
    machine.vm.provider "virtualbox" do |vb|
      vb.name ="HomeServer"
      vb.memory = "4096"
      vb.cpus = 4
    end
  end
end

