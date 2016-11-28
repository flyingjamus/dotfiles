# Completions {{{1
# fpath=($BREW_HOME/lib/node_modules/tailr/completions $fpath)
# fpath=(/usr/local/share/npm/lib/node_modules/tailr/completions $fpath)
# fpath=(/usr/local/share/npm/lib/node_modules/dns-switcher/completions $fpath)
# fpath=($HOME/.rbenv/versions/2.0.0-p247/lib/ruby/gems/2.0.0/gems/shaft-0.8.8/completions $fpath)
fpath=($DOTF/zsh/vendor/zsh-completions/src $fpath)

# 3rd party {{{1

cached_eval rbenv rbenv init --no-rehash -

cached_eval fasd fasd --init posix-alias zsh-hook zsh-ccomp zsh-ccomp-install \
  zsh-wcomp zsh-wcomp-install

# History {{{1
HISTFILE="$HOME/.zhistory" # The path to the history file.
HISTSIZE=10000                   # The maximum number of events to save in the internal history.
SAVEHIST=10000                   # The maximum number of events to save in the history file.
setopt BANG_HIST                 # Treat the '!' character specially during expansion.
setopt EXTENDED_HISTORY          # Write the history file in the ':start:elapsed;command' format.
setopt INC_APPEND_HISTORY        # Write to the history file immediately, not when the shell exits.
setopt SHARE_HISTORY             # Share history between all sessions.
setopt HIST_EXPIRE_DUPS_FIRST    # Expire a duplicate event first when trimming history.
setopt HIST_IGNORE_DUPS          # Do not record an event that was just recorded again.
setopt HIST_IGNORE_ALL_DUPS      # Delete an old recorded event if a new event is a duplicate.
setopt HIST_FIND_NO_DUPS         # Do not display a previously found event.
setopt HIST_IGNORE_SPACE         # Do not record an event starting with a space.
setopt HIST_SAVE_NO_DUPS         # Do not write a duplicate event to the history file.
setopt HIST_VERIFY               # Do not execute immediately upon history expansion.

# Smart URLs {{{1

# Replace '?', '=' and '&' with \?, \=, \& when typing urls
autoload -Uz url-quote-magic
zle -N self-insert url-quote-magic

function j() {
  cd "$(fasd -l -d "$@" | fzf -1 --no-sort --tac)"
}

function open() {
  xdg-open "$@"
}

# Bindings {{{1

bindkey '^R' history-incremental-pattern-search-backward
bindkey '^F' history-incremental-pattern-search-forward
bindkey '^N' down-line-or-search
bindkey '^K' kill-line
bindkey '^P' up-line-or-search
bindkey '^A' beginning-of-line
bindkey '^E' end-of-line

# Directories {{{1
setopt AUTO_CD              # Auto changes to a directory without typing cd.
setopt AUTO_PUSHD           # Push the old directory onto the stack on cd.
setopt PUSHD_IGNORE_DUPS    # Do not store duplicates in the stack.
setopt PUSHD_SILENT         # Do not print the directory stack after pushd or popd.
setopt PUSHD_TO_HOME        # Push to home directory when no argument is given.
setopt CDABLE_VARS          # Change directory to a path stored in a variable.
setopt AUTO_NAME_DIRS       # Auto add variable-stored paths to ~ list.
setopt MULTIOS              # Write to multiple descriptors.
setopt EXTENDED_GLOB        # Use extended globbing syntax.
unsetopt CLOBBER            # Do not overwrite existing files with > and >>.
                            # Use >! and >>! to bypass.

# FZF {{{1

# make FZF respect .gitignore
export FZF_DEFAULT_COMMAND='ag -g ""'

# Misc {{{1

# don't log to history commands starting with a space
setopt HIST_IGNORE_SPACE

setopt LONG_LIST_JOBS     # List jobs in the long format by default.
setopt AUTO_RESUME        # Attempt to resume existing job before creating a new process.
setopt NOTIFY             # Report status of background jobs immediately.

unsetopt cdablevars

BASE16_SHELL=$HOME/.config/base16-shell/
[ -n "$PS1" ] && [ -s $BASE16_SHELL/profile_helper.sh ] && eval "$($BASE16_SHELL/profile_helper.sh)"

let base16colorspace=256
[ -f /usr/local/google/home/dansht/.config/base16-shell/scripts/base16-eighties.sh ] && . /usr/local/google/home/dansht/.config/base16-shell/scripts/base16-eighties.sh
