#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return
complete -cf sudo
alias ls='ls --color=auto'

PS1='\[\e[1;30m\]┌─[\[\e[1;36m\] \d \[\e[1;31m\]\T \[\e[1;30m\]]\n\[\e[1;30m\]└─[ \[\e[0;32m\]\u\[\e[0;31m\]@\W \[\e[1;30m\]]\[\e[0;33m\]\$\[\e[m \]'


function parse_git_dirty {
  [[ $(git status 2> /dev/null | tail -n1) != "nothing to commit (working directory clean)" ]] && echo "*"
}
function parse_git_branch {
  git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e "s/* \(.*\)/[\1$(parse_git_dirty)]/"
}
#PS1="\[$(tput rev;tput setaf 1)\]\356\202\260\$(tput setaf 1;tput rev)\]\u\[$(tput sgr0)\]\[$(tput setaf 1)\]\356\202\260\[$(tput setaf 2;tput rev)\]\356\202\260 \W \[$(tput sgr0)\]\[$(tput setaf 2)\]\356\202\260\[$(tput setaf 3;tput rev)\]\356\202\260\[$(tput sgr0)\]\[$(tput setaf 3)\]\356\202\260\[$(tput sgr0)\] "

#install wrapper
export WORKON_HOME=~/.virtualenvs
source /usr/bin/virtualenvwrapper.sh

#function cd() { builtin cd -- "$@" && { [ "$PS1" = "" ] || ls -l --group-directories-first; }; }

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
alias add='git add '
alias push='git push origin '
alias pull='git pull origin '
alias commit='git commit -m'
alias status='git status'
alias remote='git remote add origin'

export TERM='rxvt-unicode-256color'
export TERM='linux'
alias mysql='/opt/lampp/bin/mysql -u root -p'
