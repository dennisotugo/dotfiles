#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

export GOPATH=~/go
export PATH=$PATH:~/go/bin
export GTK_CSD=0
export LD_PRELOAD=/usr/lib/libgtk3-nocsd.so.0
