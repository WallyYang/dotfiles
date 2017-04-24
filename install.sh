#!/bin/bash

# create dotfiles config
ln -s ~/dotfiles/.bashrc ~/
ln -s ~/dotfiles/.vimrc ~/
ln -s ~/dotfiles/.spacemacs.d ~/
ln -s ~/dotfiles/.eclimrc ~/
ln -s ~/dotfiles/.ycm_extra_conf.py ~/
ln -s ~/dotfiles/.i3 ~/

# build oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
git clone git://github.com/zsh-users/zsh-autosuggestions ~/.zsh/zsh-autosuggestions
rm ~/.zshrc
ln -s ~/dotfiles/.zshrc ~/

# create temporary trash can
sudo mkdir /delete
sudo chmod 777 /delete
