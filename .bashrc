#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

export GOPATH=~/go
export PATH=$PATH:~/go/bin
export VISUAL="leafpad"
export GTK_MODULES=unity-gtk-module
export UBUNTU_MENUPROXY=1