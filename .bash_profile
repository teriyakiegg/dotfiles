# ====================
# node and ruby
# ====================

export PATH=$HOME/.nodebrew/current/bin:$PATH
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

# ====================
# bashrc
# ====================

if [ -f ~/.bashrc ] ; then
        . ~/.bashrc
fi
