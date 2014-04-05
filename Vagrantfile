# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you are doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = "centos65"
  config.vm.box_url = "https://github.com/2creatives/vagrant-centos/releases/download/v6.5.3/centos65-x86_64-20140116.box"

  config.vm.define "server0" do |server0|
    server0.vm.hostname = "server0"
    server0.vm.network :private_network, ip: "192.168.251.10"

    config.vm.provider "virtualbox" do | v |
      v.name = 'server0'
    end
  end

  config.vm.define "server1" do |server1|
    server1.vm.hostname = "server1"
    server1.vm.network :private_network, ip: "192.168.251.11"

    config.vm.provider "virtualbox" do | v |
      v.name = 'server1'
    end
  end

  config.vm.define "server2" do |server2|
    server2.vm.hostname = "server2"
    server2.vm.network :private_network, ip: "192.168.251.12"

    config.vm.provider "virtualbox" do | v |
      v.name = 'server2'
    end
  end

  config.vm.provision "ansible" do |ansible|
    ansible.playbook = "site.yml"
    ansible.verbose = "v"
    ansible.sudo = "true"
    ansible.sudo_user = "root"
    ansible.host_key_checking = "false"
  end
end
