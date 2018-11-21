#!/usr/bin/env bash

export DEBIAN_FRONTEND=noninteractive
export APTARGS="-q -o=Dpkg::Use-Pty=0"

# make sure apt database is up-to date
apt-get update ${APTARGS}

# install golang-1.10
apt-get install -y golang-1.10 ${APTARGS}

# Symlink to our GO path
#ln -s /vagrant/go /home/vagrant/

# Shamelessly stolen from Alvaro (who apparently didn't stole it from somewhere else) :)
grep 'GOPATH|GOROOT' ~/.profile &>/dev/null || {
  sudo mkdir -p ~/go
  cp ~/.profile ~/.profile.ori
  grep -v 'GOPATH|GOROOT' ~/.profile.ori | sudo tee -a ~/.profile
  echo 'export GOROOT=/usr/lib/go-1.10' | sudo tee -a ~/.profile
  echo 'export PATH=$PATH:$GOROOT/bin' | sudo tee -a ~/.profile
  echo 'export GOPATH=~/go' | sudo tee -a ~/.profile
}

grep 'GOPATH|GOROOT' /home/vagrant/.profile &>/dev/null || {
  sudo mkdir -p /home/vagrant/go
  cp /home/vagrant/.profile /home/vagrant/.profile.ori
  grep -v 'GOPATH|GOROOT' /home/vagrant/.profile.ori | sudo tee -a /home/vagrant/.profile
  echo 'export GOROOT=/usr/lib/go-1.10' | sudo tee -a /home/vagrant/.profile
  echo 'export PATH=$PATH:$GOROOT/bin' | sudo tee -a /home/vagrant/.profile
  echo 'export GOPATH=/home/vagrant/go' | sudo tee -a /home/vagrant/.profile
  sudo chown -R vagrant:  /home/vagrant
}

# Cleanup
apt-get clean ${APTARGS}
