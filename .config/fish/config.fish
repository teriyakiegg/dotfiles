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

set GHQ_SELECTOR peco

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

alias ll='ls -al'

alias ba='vim ~/.bashrc'
alias so='source ~/.bashrc'

