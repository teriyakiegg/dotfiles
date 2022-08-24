# ====================
# export
# ====================

export PATH=$HOME/.nodebrew/current/bin:$PATH
export PATH="$HOME/.rbenv/bin:$PATH"

export PATH=/usr/local/google-cloud-sdk/bin:$PATH

export EDITOR='vim'
export MANPAGER='less -X'
export HISTSIZE=9999

# ====================
# Go
# ====================

export GOENV_ROOT="$HOME/.goenv"
export PATH="$GOENV_ROOT/bin:$PATH"
eval "$(goenv init -)"
export GOPATH="$HOME/Git/go"
export PATH="$GOROOT/bin:$PATH"
export PATH="$PATH:$GOPATH/bin"

# ====================
# python
# ====================

export PATH="$HOME/Library/Python/3.8/bin:$PATH"

# ====================
# ruby
# ====================

if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

# ====================
# Google Cloud SDK
# ====================

if [ -f '/usr/local/google-cloud-sdk/path.bash.inc' ]; then . '/usr/local/google-cloud-sdk/path.bash.inc'; fi                                         
if [ -f '/usr/local/google-cloud-sdk/completion.bash.inc' ]; then . '/usr/local/google-cloud-sdk/completion.bash.inc'; fi

# ====================
# bashrc
# ====================

if [ -f ~/.bashrc ] ; then
  source ~/.bashrc
fi
