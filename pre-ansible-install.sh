#!/bin/sh

# Update the system
sudo pacman -Syu

# Install Python
sudo pacman -S python --noconfirm

# Install Pip
sudo pacman -S python-pip --noconfirm

# Verify installations
python --version
pip --version

echo "Python and Pip have been installed!"

# Install Ansible
sudo pacman -S ansible --noconfirm

ansible-playbook endeavour-install.yaml
