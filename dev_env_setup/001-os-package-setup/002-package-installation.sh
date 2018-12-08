#!/bin/bash

sudo apt-get install -y software-properties-common
sudo apt-get install -y snapd
sudo apt-get install -y vim
sudo apt-get install -y subversion git
sudo apt-get install -y openssh-server haproxy

snap install ubuntu-make --classic

echo PATH=\$PATH:/snap/bin | tee --append -i ~/.bashrc
source ~/.bashrc

# default: Suggested packages:
# default:   ctags vim-scripts vim-doc
