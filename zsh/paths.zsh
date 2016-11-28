PATH="$HOME/.local/bin:$PATH"
PATH="$HOME/mutable_node_modules/bin:$PATH"

# The next line updates PATH for the Google Cloud SDK.
source '/usr/local/google/home/dansht/.local/lib/google-cloud-sdk/path.zsh.inc'

# The next line enables shell command completion for gcloud.
source '/usr/local/google/home/dansht/.local/lib/google-cloud-sdk/completion.zsh.inc'

export GOROOT=$HOME/.local/lib/go
export PATH=$PATH:$GOROOT/bin

export GOPATH=$HOME/work
