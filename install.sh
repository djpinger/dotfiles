#!/bin/bash

brew bundle --file=brew/Brewfile
stow bash
stow ssh
stow tmux
stow vim
./iterm2_setup.sh
