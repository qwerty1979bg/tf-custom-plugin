Vagrant.configure("2") do |config|

  config.vm.provider "virtualbox" do |vb|
    vb.memory = "512"
  end

  config.vm.define name="go" do |node|
    node.vm.box = "ubuntu/xenial64"
    node.vm.hostname = "go"
    node.vm.provision "shell", path: "scripts/install_golang.sh"
    node.vm.provision "shell", path: "build_plugin.sh"
  end

end
