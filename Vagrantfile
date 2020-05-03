Vagrant.configure("2") do |config|

config.vm.define "dockermaster" do |dockermaster|
 dockermaster.vm.box = "ubuntu/bionic64"
 dockermaster.vm.hostname = "dockermaster"
 dockermaster.vm.network "public_network", bridge: "wlp7s0" , ip: "192.168.1.11"
 dockermaster.vm.provision "shell", path: "basic-provision.sh"
end


end
