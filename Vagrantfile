Vagrant.require_version ">= 1.7.0"

Vagrant.configure(2) do |config|
  config.vm.provider "virtualbox" do |v|
    v.memory = 1536
    v.cpus = 2
  end

  config.vm.network "forwarded_port", guest: 81, host: 8111

  config.vm.box = "centos/7"

  # Disable the new default behavior introduced in Vagrant 1.7, to
  # ensure that all Vagrant machines will use the same SSH key pair.
  # See https://github.com/mitchellh/vagrant/issues/5005
  config.ssh.insert_key = false

  config.vm.provision "ansible" do |ansible|
    ansible.verbose = "v"
    ansible.playbook = "playbook.yml"
  end
end


# Vagrant.configure("2") do |config|
#   config.vm.provider "docker" do |d|
#     d.image = "centos:7"
#     d.has_ssh = true
#   end

#   config.ssh.insert_key = true

#   config.vm.provision "ansible" do |ansible|
#     ansible.verbose = "v"
#     ansible.playbook = "playbook.yml"
#   end
# end

