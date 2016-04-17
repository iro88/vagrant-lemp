# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|

  config.vm.box = "ubuntu/trusty64"
  config.vm.box_check_update = true
  config.vm.network "forwarded_port", guest: 80, host: 80

  config.vm.synced_folder "www", "/vagrant/www", 
    owner: 'vagrant',
    group: 'www-data',
    mount_options: ["dmode=775","fmode=666"]

  config.vm.provider "virtualbox" do |vb|
    vb.gui = false
    vb.memory = "1024"
  end

  config.vm.provision "shell", path: "./config/init.sh"

end