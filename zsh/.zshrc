export ZSHFILES="$HOME/.zsh"

source $HOME/.profile

source $ZSHFILES/paths.zsh
source $ZSHFILES/core.zsh
source $ZSHFILES/aliases.zsh
source $ZSHFILES/completion.zsh
source $ZSHFILES/prompt.zsh

source $ZSHFILES/git.plugin.zsh
source $ZSHFILES/npm.zsh

if [[ -d '/usr/local/share/chruby' ]]; then
  source /usr/local/share/chruby/chruby.sh
  source /usr/local/share/chruby/auto.sh
fi

source $ZSHFILES/settings.zsh

source $HOME/.fzf.zsh

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
