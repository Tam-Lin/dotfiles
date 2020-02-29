#!/usr/bin/env bash

export PATH=/usr/local/bin:$PATH

export LESS="-erX"
export CLICOLOR=1
export LSCOLORS=ExFxCxDxBxegedabagacad

export HISTFILESIZE=5000
export HISTCONTROL=ignoreboth:erasedups


# Your place for hosting Git repos. I use this for private repos.
export GIT_HOSTING='kdm@git.tam-lin.net'

if [ -f /usr/bin/bbedit ]; then
# Set my editor and git editor
export EDITOR="/usr/local/bin/bbedit"
export GIT_EDITOR='/usr/local/bin/bbedit'
fi

if [ -f "$HOME/src/utilities/path_tools.bash" ]; then
source $HOME/src/utilities/path_tools.bash

fi

bind '"\e[A":history-search-backward'
bind '"\e[B":history-search-forward'

export WORKON_HOME=~/.virtualenvs
export PROJECT_HOME=~/src

#Enable direnv
eval "$(direnv hook bash)"

#Load homebrew bash completion, if files are there
if [ -f $(brew --prefix)/etc/bash_completion ]; then
    . $(brew --prefix)/etc/bash_completion
fi

#Load virtualenvwrapper if files are there
test -e /usr/local/bin/virtualenvwrapper.sh && source /usr/local/bin/virtualenvwrapper.sh

#Start iterm2 integration, if files are there
test -e ${HOME}/.iterm2_shell_integration.bash && source ${HOME}/.iterm2_shell_integration.bash
