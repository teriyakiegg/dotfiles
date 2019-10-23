# ====================
# ruby
# ====================

status --is-interactive; and source (rbenv init -|psub)

# ====================
# functions
# ====================

function history-merge --on-event fish_preexec
  history --save
  history --merge
end

function peco_sync_select_history
  history-merge
  peco_select_history $argv
end

function fish_user_key_bindings
  bind \cr 'peco_sync_select_history (commandline -b)'
end

# ====================
# set
# ====================

set GHQ_SELECTOR peco
set -g theme_color_scheme solarized-dark

# ====================
# aliases
# ====================

alias gb='git branch'
alias gst='git status'
alias gfe='git fetch -p'
alias gco='git checkout'
alias gdi='git diff'
alias gpul='git pull'

alias t='tig'
alias v='vim'

alias ll='ls -al'
alias cd.='cd ..'

alias ba='vim ~/.bashrc'
alias so='source ~/.bashrc'
