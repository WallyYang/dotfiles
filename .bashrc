#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

# frequent commands
alias ll='ls -al'
alias work='cd ~/workspace/'

# switch CTRL & CAPS_LOCK
setxkbmap -option ctrl:swapcaps
alias map="setxkbmap -option ctrl:swapcaps"

