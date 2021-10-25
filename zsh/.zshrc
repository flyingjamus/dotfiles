export ZSHFILES="$HOME/.zsh"

source $HOME/.profile

source $ZSHFILES/paths.zsh
source $ZSHFILES/core.zsh
source $ZSHFILES/aliases.zsh
source $ZSHFILES/completion.zsh
source $ZSHFILES/prompt.zsh

source $ZSHFILES/git.plugin.zsh
source $ZSHFILES/npm.zsh
source $ZSHFILES/zsh-autosuggestions/zsh-autosuggestions.zsh

# #
if [[ -d '/usr/local/share/chruby' ]]; then
  source /usr/local/share/chruby/chruby.sh
  source /usr/local/share/chruby/auto.sh
fi

source $ZSHFILES/settings.zsh

source $HOME/.fzf.zsh

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

[ -f $ZSHFILES/local.zsh ] && source $ZSHFILES/local.zsh

export PATH="$HOME/.yarn/bin:$PATH"


# The next line updates PATH for the Google Cloud SDK.
if [ -f '/home/danny/.local/share/google-cloud-sdk/path.zsh.inc' ]; then . '/home/danny/.local/share/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/home/danny/.local/share/google-cloud-sdk/completion.zsh.inc' ]; then . '/home/danny/.local/share/google-cloud-sdk/completion.zsh.inc'; fi

