#!/usr/bin/env python3

import os
import shutil
import subprocess

config_files = [
    ".vimrc",
    ".spacemacs.d",
    ".eclimrc",
    ".ycm_extra_conf.py",
    ".gitconfig",
    ".gitignore_global",
    ".tmux.conf",
]


def deploy_config():
    print("Backing up Existing Config")

    backup_path = os.path.expanduser("~/dotfiles/backup/")
    try:
        print("mkdir ~/dotfiles/backup/")
        os.mkdir(backup_path)
    except FileExistsError:
        print
        shutil.rmtree(backup_path)
        os.mkdir(backup_path)

    # Copy file to backup directory
    for config_file in config_files:
        src_path = os.path.expanduser(f"~/{config_file}")
        dst_path = os.path.expanduser(f"~/dotfiles/backup/{config_file}")

        if os.path.exists(src_path):
            print(f"mv {src_path} {dst_path}")
            os.rename(src_path, dst_path)


def symlink_config():
    print("Create symlinks for Configs")
    for config_file in config_files:
        src_path = os.path.expanduser(f"~/dotfiles/{config_file}")
        dst_path = os.path.expanduser(f"~/{config_file}")

        os.symlink(src_path, dst_path)


def setup_bash():
    print("Seting up Bash")

    bash_path = os.path.expanduser("~/.bashrc")
    with open(bash_path, 'a') as bash_rc:
        bash_rc.write("\n\nalias l=\"ls -al\"")


def setup_git():
    # Setup global git ignore
    subprocess.run(["git",
                    "config",
                    "--global",
                    "core.excludesfile",
                    "~/.gitignore_global"])


def config_ohmyzsh():
    print("Configuring Oh My Zsh")

    # Install Oh My Zsh
    ohmyzsh = """sh -c \
    "$(curl -fsSL \
https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
    """
    print(ohmyzsh)
    os.system(ohmyzsh)

    # Add Plugin zsh-autosuggestions


if __name__ == '__main__':
    deploy_config()
    symlink_config()
    setup_bash()
    setup_git()
    config_ohmyzsh()
