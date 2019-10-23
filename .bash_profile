# ====================
# export
# ====================

export PATH=$HOME/.nodebrew/current/bin:$PATH
export PATH="$HOME/.rbenv/bin:$PATH"

export EDITOR='vim'
export MANPAGER='less -X'
export HISTSIZE=9999

# ====================
# ruby
# ====================

eval "$(rbenv init -)"

# ====================
# bashrc
# ====================

if [ -f ~/.bashrc ] ; then
  . ~/.bashrc
fi
