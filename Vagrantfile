# -*- mode: ruby -*-
# vi: set ft=ruby :


Vagrant.configure("2") do |config|
  config.vagrant.plugins = ["vagrant-disksize", "vagrant-vbguest"]
  config.disksize.size = "100GB"
  config.vm.box = "ubuntu/bionic64"
  config.vm.hostname = "kupl"
  config.vm.define "kupl"
  config.vm.network "forwarded_port", guest: 8888, host:9999

  config.vm.provider "virtualbox" do |vb|
    vb.name = "kupl"
    vb.memory = "16384"
    vb.cpus = "4"
    vb.customize ["modifyvm", :id, "--ioapic", "on"]
  end
  
  config.vm.provision "bootstrap", type: "shell",
      privileged: true, run: "always" do |bs|
    bs.path = "bootstrap.sh"
  end

  config.vm.provision "install_deps", type: "shell",
      privileged: false, run: "never" do |deps|
    deps.path = "install_deps.sh"
  end
  
end
