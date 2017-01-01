# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "bstoots/xubuntu-16.04-desktop-amd64"

  # Create a private network, which allows host-only access to the machine
  # using a specific IP.
  config.vm.network "private_network", ip: "192.168.33.10"
  config.vm.network "forwarded_port", guest: 8545, host: 8545
  config.vm.network "forwarded_port", guest: 8000, host: 8000
  config.vm.network "forwarded_port", guest: 8080, host: 8080
  config.vm.network "forwarded_port", guest: 35729, host: 35729

  config.vm.synced_folder "~/", "/home/vagrant/Host"


  config.vm.provider "virtualbox" do |vb|
    vb.gui = true
    vb.memory = "4096"
    vb.cpus = "2"

    # Fix for Mac OS
    vb.customize ["modifyvm", :id, "--cableconnected1", "on"]

    # Make life easier
    vb.customize ['modifyvm', :id, '--clipboard', 'bidirectional']
    vb.customize ['modifyvm', :id, '--draganddrop', 'bidirectional']
  end

  config.vm.provision "ansible" do |ansible|
    ansible.playbook = "playbooks/ethereum.yml"
  end
end
