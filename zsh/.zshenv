# XDG Base Directory Specification
export XDG_CONFIG_HOME=$HOME/.config # Where user-specific configurations should be written (analogous to /etc).
export XDG_CACHE_HOME=$HOME/.cache # Where user-specific non-essential (cached) data should be written (analogous to /var/cache).
export XDG_DATA_HOME=$HOME/.local/share # Where user-specific data files should be written (analogous to /usr/share).
export XDG_STATE_HOME=$HOME/.local/state # Where user-specific state files should be written (analogous to /var/lib).

# User's binaries
[[ -d $HOME/.local/bin ]] && mkdir --parents $HOME/.local/bin
export PATH="$HOME/.local/bin:$PATH"

# Go's binaries
[[ -d $HOME/go/bin ]] && export PATH="$HOME/go/bin:$PATH"

# Xinitrc config
export XINITRC="$XDG_CONFIG_HOME"/X11/xinitrc 
export XSERVERRC="$XDG_CONFIG_HOME"/X11/xserverrc
