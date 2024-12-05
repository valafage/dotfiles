#!/bin/bash

source "./scripts/install.sh"

set -e

# bash

ln -sf "$PWD/bash/.bashrc" "$HOME/.bashrc"
ln -sf "$PWD/bash/.bash_aliases" "$HOME/.bash_aliases"
ln -sf "$PWD/bash/.bash_variables" "$HOME/.bash_variables"

source "$HOME/.bashrc"

# editor

ln -sf "$PWD/editor/.vimrc" "$HOME/.vimrc"

# scripts

install_scripts

# ssh

ln -sf "$PWD/ssh/config" "$HOME/.ssh/config"

# terminal

ln -sf "$PWD/terminal/.tmux.conf" "$HOME/.tmux.conf" 

# vcs

ln -sf "$PWD/vcs/.gitconfig" "$HOME/.gitconfig"

