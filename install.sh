#!/bin/bash

# bash

ln -s $PWD/bash/.bashrc ~/.bashrc
ln -s $PWD/bash/.bash_aliases ~/.bash_aliases
ln -s $PWD/bash/.bash_variables ~/.bash_variables

# editor

ln -s $PWD/editor/.vimrc ~/.vimrc

# scripts

sudo ln -s $PWD/scripts/system/remove_old_logs.sh /usr/local/bin/rm-logs

# ssh

ln -s $PWD/ssh/config ~/.ssh/config

# terminal

ln -s $PWD/terminal/.tmux.conf ~/.tmux.conf 

# vcs

ln -s $PWD/vcs/.gitconfig ~/.gitconfig

