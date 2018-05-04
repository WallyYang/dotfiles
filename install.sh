#!/bin/bash

echo "Back up existing config"

if [ -e ${PWD}/backup ]
then
    rm -r ${PWD}/backup
fi
mkdir ~/dotfiles/backup

files=(.bashrc .vimrc .spacemacs.d .eclimrc .ycm_extra_conf.py .gitconfig)

for file in "${files[@]}"
do
    if [ -e ~/${file} ]
    then
        echo "Back up ${file}"
        mv ~/${file} "${PWD}/backup"

        ln -s ${PWD}/${file} ~/${file}
    fi
done

echo "Creating trash can"
sudo mkdir /delete
sudo chmod 777 /delete

echo "Installing oh-my-zsh"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# build oh-my-zsh
git clone git://github.com/zsh-users/zsh-autosuggestions ~/.zsh/zsh-autosuggestions
rm ~/.zshrc
ln -s ~/dotfiles/.zshrc ~/
