#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return
complete -cf sudo

alias ls='ls --color=auto'
PS1='\[\e[1;30m\]┌─[\[\e[1;36m\] \d \[\e[1;31m\]\T \[\e[1;30m\]]\n\[\e[1;30m\]└─[ \[\e[0;32m\]\u\[\e[0;31m\]@\[\e[1;33m\]\h \W \[\e[1;30m\]]\[\e[0;33m\]\$\[\e[m \]'

## Kumpulan alias
#
alias l='ls -la'
alias up='sudo ifconfig enp1s0 up; sudo dhcpcd'
alias xampp='sudo /opt/lampp/xampp start'
