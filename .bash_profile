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

if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

# ====================
# bashrc
# ====================

if [ -f ~/.bashrc ] ; then
  source ~/.bashrc
fi
