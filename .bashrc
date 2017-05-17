# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

alias dotmgr='/usr/bin/git --git-dir=/home/spcutrell/.dots --work-tree=/home/spcutrell'
