#
# ~/.bashrc
# used to bootstrap nash

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

[ -f ~/.fzf.bash ] && source ~/.fzf.bash

export NASHPATH=$HOME/nash
export PATH=$PATH:$NASHPATH/bin
