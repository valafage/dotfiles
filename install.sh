#!/bin/bash

# bash

ln -s $PWD/bash/.bashrc ~/.bashrc
ln -s $PWD/bash/.bash_aliases ~/.bash_aliases
ln -s $PWD/bash/.bash_variables ~/.bash_variables

# editor

ln -s $PWD/editor/.vimrc ~/.vimrc

# scripts

ln -s $PWD/scripts ~/scripts

sudo ln -s ~/scripts/system/remove_old_logs.sh /usr/local/bin/rm-logs
sudo ln -s ~/scripts/video/convert/from_m2ts_to_mp4_lossless.sh /usr/local/bin/convert-tvr

# ssh

ln -s $PWD/ssh/config ~/.ssh/config

# terminal

ln -s $PWD/terminal/.tmux.conf ~/.tmux.conf 

# vcs

ln -s $PWD/vcs/.gitconfig ~/.gitconfig

