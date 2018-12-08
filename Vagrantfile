# -*- mode: ruby -*-
# vi: set ft=ruby :

# All Vagrant configuration is done below. The "2" in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility). Please don't change it unless you know what
# you're doing.

Vagrant.configure("2") do |config|

  config.vm.box = "boxcycler/linuxmint-19-mate-64bit-v2"
  config.vm.box_version = "2018.8.22"

  config.vm.provider "virtualbox" do |vb|
      vb.gui = true
      vb.memory = "4096"
  end

  config.vm.network "forwarded_port", host: 80, guest: 80 # haproxy
  config.vm.network "forwarded_port", host: 8080, guest: 8080 # tomcat
  config.vm.network "forwarded_port", host: 61616, guest: 61616 # activemq
  config.vm.network "forwarded_port", host: 8161, guest: 8161 # activemq admin web

  config.vm.provision "upgrade-packages",
    type: "shell",
    preserve_order: true,
    path: "./dev_env_setup/001-os-package-setup/001-package-upgrade.sh",
    run: "always"
  config.vm.provision "install-packages",
    type: "shell",
    preserve_order: true,
    path: "./dev_env_setup/001-os-package-setup/002-package-installation.sh"

  # Run Once
  config.vm.provision "install-java",
    type: "shell",
    preserve_order: true,
    path: "./dev_env_setup/002-dev-kit-setup/001-java-setup.sh"
  config.vm.provision "install-maven",
    type: "shell",
    preserve_order: true,
    path: "./dev_env_setup/002-dev-kit-setup/002-maven-setup.sh"
  config.vm.provision "install-gradle",
    type: "shell",
    preserve_order: true,
    path: "./dev_env_setup/002-dev-kit-setup/003-gradle-setup.sh"
  config.vm.provision "install-nodejs",
    type: "shell",
    preserve_order: true,
    path: "./dev_env_setup/002-dev-kit-setup/004-nodejs-setup.sh"
  config.vm.provision "install-python",
    type: "shell",
    preserve_order: true,
    path: "./dev_env_setup/002-dev-kit-setup/005-python-setup.sh"

  # Run Never, for manual provision with : --provision-with <provisioner>
  config.vm.provision "install-android-studio",
    type: "shell",
    preserve_order: true,
    run: "never",
    path: "./dev_env_setup/002-dev-kit-setup/006-android-studio-setup.sh"
  config.vm.provision "install-ionic",
    type: "shell",
    preserve_order: true,
    run: "never",
    path: "./dev_env_setup/002-dev-kit-setup/007-ionic-setup.sh"

  config.vm.provision "install-atom",
    type: "shell",
    preserve_order: true,
    run: "never",
    path: "./dev_env_setup/003-dev-tools-setup/001-atom-setup.sh"
  config.vm.provision "install-neovim",
    type: "shell",
    preserve_order: true,
    run: "never",
    path: "./dev_env_setup/003-dev-tools-setup/002-neovim-setup.sh"

end
