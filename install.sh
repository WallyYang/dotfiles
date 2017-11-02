#!/bin/bash

# create dotfiles config
ln -s ~/dotfiles/.bashrc ~/
ln -s ~/dotfiles/.vimrc ~/
ln -s ~/dotfiles/.spacemacs.d ~/
ln -s ~/dotfiles/.eclimrc ~/
ln -s ~/dotfiles/.ycm_extra_conf.py ~/
ln -s ~/dotfiles/.i3 ~/
ln -s ~/dotfiles/.gitconfig ~/

# create temporary trash can
sudo mkdir /delete
sudo chmod 777 /delete

sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

