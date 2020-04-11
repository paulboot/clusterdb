#!/usr/bin/env bash

# install ansible (http://docs.ansible.com/intro_installation.html)
apt-get -y install software-properties-common
apt-add-repository -y ppa:ansible/ansible
apt-get update
apt-get -y install ansible

# copy examples into /home/vagrant (from inside the mgmt node)
cp -a /vagrant/examples/* /home/vagrant
chown -R vagrant:vagrant /home/vagrant

# configure hosts file for our internal network defined by Vagrantfile
cat >> /etc/hosts <<EOL

# vagrant environment nodes
10.0.15.10  mgmt
10.0.15.11  prx1
10.0.15.12  prx2
10.0.15.21  db1
10.0.15.22  db2
10.0.15.23  db3
10.0.15.24  db4
10.0.15.25  db5
10.0.15.26  db6
10.0.15.27  db7
10.0.15.28  db8
EOL
