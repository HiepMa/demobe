Vagrant.configure(2) do |config|
  config.vm.define "dokku1" do |mrd1|
    mrd1.vm.box = "ubuntu/bionic64"
    mrd1.vm.hostname = "dokku-be"
    mrd1.vm.network "public_network", bridge: 'ens33', ip: "192.168.82.156"
    mrd1.vm.provider "virtualbox" do |vb|
      vb.name = "ubuntu-1"
      vb.gui = false
      vb.memory = 4096
      vb.cpus = 2
    end
    mrd1.vm.provision "shell", path: "script2.sh"
  end
  config.vm.define "dokku2" do |mrd2|
    mrd2.vm.box = "ubuntu/bionic64"
    mrd2.vm.hostname = "dokku-fe"
    mrd2.vm.network "public_network", bridge: 'ens33', ip: "192.168.82.157"
    mrd2.vm.provider "virtualbox" do |vb|
      vb.name = "ubuntu-2"
      vb.gui = false
      vb.memory = 4096
      vb.cpus = 2
    end
    mrd2.vm.provision "shell", path: "script2.sh"
  end
end
