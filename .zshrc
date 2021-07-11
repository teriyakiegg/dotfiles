# ====================
# ruby
# ====================

export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init - zsh)"

# ====================
# git
# ====================

# git-completionの読み込み
fpath=(~/.zsh $fpath)
zstyle ':completion:*:*:git:*' script ~/.zsh/git-completion.bash
autoload -Uz compinit && compinit

# ====================
# aliases
# ====================

if [ -f ~/.aliases_common ] ; then
  source ~/.aliases_common
fi

if [ -f ~/.aliases_local ] ; then
  source ~/.aliases_local
fi

if [ -f ~/.aliases_zsh ] ; then
  source ~/.aliases_zsh
fi
