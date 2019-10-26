# ====================
# default shell
# ====================

if [ $SHELL != "/usr/local/bin/fish" ]
  chsh -s /usr/local/bin/fish
end

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
  bind \ct 'tig'
  
  bind \cf forward-word
  bind \cb backward-word
end

# ====================
# set
# ====================

set GHQ_SELECTOR peco

# ====================
# aliases
# ====================

if test -f ~/.aliases_common
  source ~/.aliases_common
end

if test -f ~/.aliases_fish
  source ~/.aliases_fish
end
