# -*- mode: ruby -*-
# vi: set ft=ruby :

# global configuration
VAGRANTFILE_API_VERSION = "2"
VAGRANT_BOX = "ubuntu/trusty64"
VAGRANT_BOX_MEMORY = 256
VIRTUAL_BOX_NAME = "html-to-pdf"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

    config.vm.box = VAGRANT_BOX
    config.vm.hostname = VIRTUAL_BOX_NAME
    config.vm.network "private_network", ip: "192.168.161.100"
    config.vm.synced_folder ".", "/vagrant", :nfs => { :mount_options => ["dmode=777","fmode=777"] }

    # configure virtual box
    config.vm.provider :virtualbox do |vb|
        vb.name = VIRTUAL_BOX_NAME
        vb.customize ["modifyvm", :id, "--memory", VAGRANT_BOX_MEMORY]
    end

    config.vm.provision "shell", inline: "wget -P /tmp http://download.gna.org/wkhtmltopdf/0.12/0.12.3/wkhtmltox-0.12.3_linux-generic-amd64.tar.xz"
    config.vm.provision "shell", inline: "tar -xvf /tmp/wkhtmltox-0.12.3_linux-generic-amd64.tar.xz -C /usr/src"
    config.vm.provision "shell", inline: "ln -s /usr/src/wkhtmltox/bin/wkhtmltopdf /usr/local/bin"
    config.vm.provision "shell", inline: "rm -rf /tmp/wkhtmltox-0.12.3_linux-generic-amd64.tar.xz"
end
