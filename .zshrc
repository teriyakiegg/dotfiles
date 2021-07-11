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

# git-promptの読み込み
source ~/.zsh/git-prompt.sh

# プロンプトのオプション表示設定
GIT_PS1_SHOWDIRTYSTATE=true
GIT_PS1_SHOWUNTRACKEDFILES=true
GIT_PS1_SHOWSTASHSTATE=true
GIT_PS1_SHOWUPSTREAM=auto

# プロンプトの表示設定(好きなようにカスタマイズ可)
setopt PROMPT_SUBST ; PS1='%F{green}( ˘ω˘)< %F{cyan}%~%f %F{red}$(__git_ps1 "(%s)")%f\$ '


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
