#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

# set terminal opacity
if [ -n "$WINDOWID" ]; then
TRANSPARENCY_HEX=$(printf 0x%x $((0xffffffff * 85 / 100)))
xprop -id "$WINDOWID" -f _NET_WM_WINDOW_OPACITY 32c -set _NET_WM_WINDOW_OPACITY "$TRANSPARENCY_HEX"
fi

# frequent commands
alias ll='ls -al'
alias work='cd ~/workspace/'

# switch CTRL & CAPS_LOCK
setxkbmap -option ctrl:swapcaps
