export ZSHFILES="$HOME/.zsh"

source $HOME/.profile

source $ZSHFILES/paths.zsh
source $ZSHFILES/core.zsh
source $ZSHFILES/aliases.zsh
source $ZSHFILES/completion.zsh
source $ZSHFILES/prompt.zsh

source $ZSHFILES/git.plugin.zsh
source $ZSHFILES/npm.zsh


source /usr/local/share/chruby/chruby.sh
source /usr/local/share/chruby/auto.sh

source $ZSHFILES/settings.zsh

source $HOME/.fzf.zsh

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
