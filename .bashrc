# ====================
# prompt cunstomize
# ====================

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

# ====================
# bash_history
# ====================

shopt -u histappend
function share_history {
    history -a
    history -c
    history -r
}
PROMPT_COMMAND='share_history'
HISTTIMEFORMAT='%Y-%m-%d %T '

# ====================
# peco
# ====================

bind -x '"\C-r": eval $(history | cut -c 28-|peco)'

# ====================
# aliases
# ====================

if [ -f ~/.aliases_common ] ; then
  source ~/.aliases_common
fi

if [ -f ~/.aliases_bash ] ; then
  source ~/.aliases_bash
fi

exec fish
