#!/usr/bin/env python3

import errno
import os
import shutil
import subprocess

# dot files under ~/
dot_home = [
    ".vimrc",
    ".spacemacs.d",
    ".ycm_extra_conf.py",
    ".gitconfig",
    ".gitignore_global",
    ".tmux.conf",
]


def backup_config():
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
    for config_file in dot_home:
        src_path = os.path.expanduser(f"~/{config_file}")
        dst_path = os.path.expanduser(f"~/dotfiles/backup/{config_file}")

        if os.path.exists(src_path):
            print(f"mv {src_path} {dst_path}")
            os.rename(src_path, dst_path)


def symlink_config():
    print("Create symlinks for Configs")
    for config_file in dot_home:
        src_path = os.path.expanduser(f"~/dotfiles/{config_file}")
        dst_path = os.path.expanduser(f"~/{config_file}")

        try:
            os.symlink(src_path, dst_path)
        except OSError as e:
            if e.errno == errno.EEXIST:
                os.remove(dst_path)
                os.symlink(src_path, dst_path)
            else:
                raise e


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


if __name__ == '__main__':
    backup_config()
    symlink_config()
    setup_bash()
    setup_git()
