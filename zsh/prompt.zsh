autoload -U promptinit && promptinit
prompt pure

DISABLE_AUTO_TITLE="true"
#
# function precmd () {
#   if [[ $PWD =~ '/google/src/cloud/[^/]+/(.+)/google3(.*)' ]]; then
#     # Use CitC client names as window titles in screen/tmux
#     # print -Pn "\ek${match[1]}\e\\"
#     window_title="\033]0;${match[1]##*/}\007"
#   else
#     window_title="\033]0;${PWD}\007"
#   fi
#
#   echo -ne "$window_title"
# }
#
# google3_prompt_info() {
#   if [[ $PWD =~ '/google/src/cloud/[^/]+/(.+)/google3(.*)' ]]; then
#     # Use CitC client names as window titles in screen/tmux
#     # print -Pn "\ek${match[1]}\e\\"
#     window_title=match[1]
#
#     print -r -- "%F{yellow}($match[1]) %F{green}//${match[2]#/}"
#   else
#     print -r -- "%F{green}$PWD"
#     # set-title $PWD
#   fi
# }
#
# setopt prompt_subst  # enable command substitution (and other expansions) in PROMPT
# PROMPT='$(google3_prompt_info)%f %# '  # %f for stopping the foreground color

bindkey -e
