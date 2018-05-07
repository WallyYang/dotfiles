#!/bin/bash

echo "Back up existing config"

if [ -e ${PWD}/backup ]
then
    rm -r ${PWD}/backup
fi
mkdir ~/dotfiles/backup

files=(.vimrc .spacemacs.d .eclimrc .ycm_extra_conf.py .gitconfig)

for file in "${files[@]}"
do
    if [ -e ~/${file} ]
    then
        echo "Back up ${file}"
        mv ~/${file} "${PWD}/backup"

    fi
    ln -s ${PWD}/${file} ~/${file}
done

echo "alias l=\"ls -al\"" >> ~/.bashrc

echo "Creating trash can"
sudo mkdir /delete
sudo chmod 777 /delete

echo "Installing oh-my-zsh"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# build oh-my-zsh
git clone git://github.com/zsh-users/zsh-autosuggestions ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions

sed -i "s/^plugins=(/plugins=(archlinux extract thefuck zsh-autosuggestions/" ~/.zshrc

echo "alias dn=\"sudo systemctl disable NetworkManager.service\" # disable network manager" >> ~/.zshrc
echo "alias nn=\"sudo systemctl stop NetworkManager.service\"    # stop network manager" >> ~/.zshrc
echo "alias en=\"sudo systemctl enable NetworkManager.service\"  # enable network manager" >> ~/.zshrc
echo "alias yn=\"sudo systemctl start NetworkManager.service\"    # start network manager" >> ~/.zshrc
echo "" >> ~/.zshrc
echo "# thefuck config" >> ~/.zshrc
echo "eval \$(thefuck --alias)" >> ~/.zshrc
