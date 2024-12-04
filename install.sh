#!/bin/bash

# bash

ln -sf $PWD/bash/.bashrc ~/.bashrc
ln -sf $PWD/bash/.bash_aliases ~/.bash_aliases
ln -sf $PWD/bash/.bash_variables ~/.bash_variables

source ~/.bashrc

# editor

ln -sf $PWD/editor/.vimrc ~/.vimrc

# scripts

ln -sf $PWD/scripts ~/scripts

sudo ln -sf ~/scripts/system/remove_old_logs.sh /usr/local/bin/rm-logs

# terminal

ln -sf $PWD/terminal/.tmux.conf ~/.tmux.conf 

# vcs

ln -sf $PWD/vcs/.gitconfig ~/.gitconfig

