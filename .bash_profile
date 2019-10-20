# ====================
# node and ruby
# ====================

export PATH=$HOME/.nodebrew/current/bin:$PATH
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

# ====================
# export
# ====================

export EDITOR='vim'
export MANPAGER='less -X'

# ====================
# bashrc
# ====================

if [ -f ~/.bashrc ] ; then
        . ~/.bashrc
fi
