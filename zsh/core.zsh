CACHED_EVAL_ROOT="$HOME/.cache/dotfiles"

cached_eval() {
  local cache_key="$1"
  local cache_file="$CACHED_EVAL_ROOT/$cache_key"
  shift

  mkdir -p "$CACHED_EVAL_ROOT"

  if [ ! -e "$cache_file" ]; then
    "$@" > "$cache_file"
  fi

  source "$cache_file"
}

has_command() {
  type "$1" > /dev/null 2>&1
}

export EDITOR=nvim
alias vim='nvim'

eval "$(direnv hook zsh)"

