Vagrant.require_version ">= 2.0.0"

# https://www.vagrantup.com/docs/provisioning/ansible
Vagrant.configure(2) do |config|
  config.vm.box = "ubuntu/focal64"
  config.vm.network "private_network", ip: "192.168.2.50"
  config.vm.hostname = "HomeNAS"
  config.vm.synced_folder ".", "/home/vagrant/HomeNAS"
  config.ssh.insert_key = false
  config.vm.provider "virtualbox" do |vb|
    vb.name ="HomeNAS"
    vb.memory = "4096"
    vb.cpus = 4
  end
end
