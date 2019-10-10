function git_branch {
        git branch --no-color 2>/dev/null | sed -ne "s/^\* \(.*\)$/\1/p"
}
function promps {
        # color list
        local BLUE="\[\e[1;34m\]"
        local RED="\[\e[1;31m\]"
        local GREEN="\[\e[1;32m\]"
        local WHITE="\[\e[00m\]"
        local GRAY="\[\e[1;37m\]"
        local CYAN="\[\e[1;36m\]"

        PS1="${GREEN}(*'ω')< ${BLUE}\W${RED} [\$(git_branch)]${WHITE}\$ "
}

promps

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
