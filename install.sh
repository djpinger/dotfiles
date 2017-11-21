#!/bin/bash

brew bundle --file=brew/Brewfile
stow bash
stow ssh
stow tmux
stow vim
./iterm2_setup.sh
echo "if [ -f ~/.bash_profile_custom ]; then . ~/.bash_profile_custom; fi" >> ~/.bash_profile
$(brew --prefix)/opt/fzf/install
