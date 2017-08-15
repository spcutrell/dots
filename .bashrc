# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

export PATH="$HOME/.node_modules_global/bin:$PATH"

alias dotmgr='/usr/bin/git --git-dir=/home/scutrell/.dots --work-tree=/home/scutrell'
