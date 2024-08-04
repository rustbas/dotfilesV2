# XDG Base Directory Specification
export XDG_CONFIG_HOME=$HOME/.config # Where user-specific configurations should be written (analogous to /etc).
export XDG_CACHE_HOME=$HOME/.cache # Where user-specific non-essential (cached) data should be written (analogous to /var/cache).
export XDG_DATA_HOME=$HOME/.local/share # Where user-specific data files should be written (analogous to /usr/share).
export XDG_STATE_HOME=$HOME/.local/state # Where user-specific state files should be written (analogous to /var/lib).

# User's binaries
[[ -d $HOME/.local/bin ]] && mkdir --parents $HOME/.local/bin
export PATH="$HOME/.local/bin:/home/rustam/.local/bin:/usr/local/sbin:/usr/local/bin:/usr/bin:/usr/bin/site_perl:/usr/bin/vendor_perl:/usr/bin/core_perl"

# Xinitrc config
export XINITRC="$XDG_CONFIG_HOME"/X11/xinitrc 
export XSERVERRC="$XDG_CONFIG_HOME"/X11/xserverrc
