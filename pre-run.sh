#! /bin/sh

# Install support for PPAs
sudo apt-get update
sudo apt-get install software-properties-common python-software-properties

# Add required PPAs and update
sudo apt-add-repository ppa:ansible/ansible
sudo apt-get update

# Install dependencies
sudo apt-get install ansible git
