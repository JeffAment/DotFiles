#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '
#
# enable ccache for command line compilations
export PATH="/usr/lib/ccache/bin/:$PATH:$HOME/.gem/ruby/2.6.0/bin"

# Git AutoComplete
. ~/git-completion.bash
# Git show dirty state
. ~/git-prompt.sh
export GIT_PS1_SHOWDIRTYSTATE=1
export GIT_PS1_SHOWUNTRACKEDFILES=1
export GIT_PS1_SHOWSTASHSTATE=1
export GIT_PS1_SHOWUPSTREAM="auto"
export GIT_PS1_SHOWCOLORHINTS=true
export PS1='\w$(__git_ps1 " (%s)")\$ '
alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotFiles/ --work-tree=$HOME'
