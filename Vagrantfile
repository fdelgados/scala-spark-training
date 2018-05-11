# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant::DEFAULT_SERVER_URL.replace('https://vagrantcloud.com')

require 'yaml'

settings = YAML.load_file 'vagrant.yml'


# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

  config.vm.box = "bento/centos-7.3"

  config.vm.network "private_network", ip: settings['vm']['ip_address']
  config.vm.network "forwarded_port", guest: 443, host: 4430

  config.vm.hostname = settings['vm']['hostname']

  config.vm.synced_folder ".", "/scala-spark", type: "nfs"

  config.vm.provider "virtualbox" do |vb|
    vb .customize [
      "modifyvm", :id,
      "--name", settings['vm']['hostname'],
      "--memory", settings['vm']['memory'],
      "--natdnshostresolver1", "on",
      "--cpus", settings['vm']['cpus'],
    ]
  end

  config.ssh.username = "vagrant"
  config.ssh.password = "vagrant"
  config.ssh.insert_key = "true"

  config.vm.provision "ansible" do |ansible|
    ansible.playbook = "ansible/playbook.yml"
  end

end
