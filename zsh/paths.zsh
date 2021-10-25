PATH="$HOME/.local/bin:$PATH"
PATH="$HOME/mutable_node_modules/bin:$PATH"

export GOROOT=$HOME/.local/lib/go
# export PATH=$HOME/.local/lib/go_appengine:$PATH

export GOPATH=$HOME/go

export PATH=$GOPATH/bin:$GOROOT/bin:$PATH
export PATH=$HOME/.rbenv/bin:$HOME/.rbenv/shims:$PATH

export ANDROID_HOME=$HOME/Android/Sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH=$PATH:$ANDROID_HOME/platform-tools
