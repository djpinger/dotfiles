#!/bin/bash

sudo apt install -y tilix vim stow keychain python-pip
pip install powerline-shell ansible
stow bash
stow git
stow ssh
stow tmux
stow vim
stow powerline
ansible-playbook -i "localhost," -c local ansible/bashrc_ubuntu.yml
