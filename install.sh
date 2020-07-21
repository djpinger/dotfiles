#!/bin/bash

# Check for Homebrew, install if we don't have it
if test ! "$(command -v brew)"; then
        echo "Installing homebrew..."
        ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# Check for ansible, and upgrade if installed
echo "Checking if ansible is installed"
if test ! "$(command -v ansible)"; then
        echo "Installing ansible..."
        brew install ansible
else
        echo "Ansible found!"
fi

echo "Checking for newer version of ansible"
if test ! "$(brew outdated | grep ansible)"; then
        echo "Ansible at latest version"
else
        brew upgrade ansible
fi

brew bundle --file=brew/Brewfile
stow bash
stow git
stow ssh
stow tmux
stow vim
./iterm2_setup.sh
ansible-playbook -i "localhost," -c local ansible/bashrc.yml
$(brew --prefix)/opt/fzf/install
