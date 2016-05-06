#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return
complete -cf sudo
alias ls='ls --color=auto'

#PS1='\[\e[1;30m\]┌─[\356\202\260 \342\230\230[\e[1;36m\] \d \[\e[1;31m\]\T \[\e[1;30m\]]\n\[\e[1;30m\]└─[ \[\e[0;32m\]\u\[\e[0;31m\]@\[\e[1;33m\]\h \W \[\e[1;30m\]]\[\e[0;33m\]\$\[\e[m \]'

PS1="\[$(tput setaf 1;tput rev)\]\u\[$(tput sgr0)\]\[$(tput setaf 1)\]\356\202\260\[$(tput setaf 2;tput rev)\]\356\202\260 \W \[$(tput sgr0)\]\[$(tput setaf 2)\]\356\202\260\[$(tput setaf 3;tput rev)\]\356\202\260\[$(tput sgr0)\]\[$(tput setaf 3)\]\356\202\260\[$(tput sgr0)\] "

#install wrapper
export WORKON_HOME=~/.virtualenvs
source /usr/bin/virtualenvwrapper.sh

function cd() { builtin cd -- "$@" && { [ "$PS1" = "" ] || ls -l --group-directories-first; }; }

## Kumpulan alias
#
alias l='ls -la'
alias up='sudo ifconfig enp1s0 up; sudo dhcpcd'
alias xampp='sudo /opt/lampp/xampp start'

# Update upgrade
alias update='yaourt -Syyuua --noconfirm'
alias install='yaourt -S --noconfirm'
alias remove='yaourt -Rn'
# Alias Git
alias add='git add'
alias push='git push origin '
alias commit='git commit -m'
alias status='git status'
