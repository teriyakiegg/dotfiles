source /usr/local/etc/bash_completion.d/git-prompt.sh
source /usr/local/etc/bash_completion.d/git-completion.bash

GIT_PS1_SHOWDIRTYSTATE=true
export PS1='\h\[\033[00m\]:\W\[\033[31m\]$(__git_ps1 [%s])\[\033[00m\]\$ '

alias gb='git branch'
alias gst='git status'
alias gfe='git fetch -p'
alias gco='git checkout'
alias gdi='git diff'
alias gpul='git pull'

alias ll='ls -al'
alias cd.='cd ..'

alias ba='vim ~/.bashrc'
alias so='source ~/.bashrc'
