#############
# Variables #
#############

# I don't like it, but can't do better
DOTFILES="/home/$USER/ws/dotfilesV2"

XDG_CONFIG_HOME=$HOME/.config 
XDG_CACHE_HOME=$HOME/.cache 
XDG_DATA_HOME=$HOME/.local/share 
XDG_STATE_HOME=$HOME/.local/state 


##############
# Setup tmux #
##############

[[ -L $XDG_CONFIG_HOME/tmux ]] && rm -f $XDG_CONFIG_HOME/tmux
ln -s "$DOTFILES/tmux" $XDG_CONFIG_HOME/tmux

#############
# Setup zsh #
#############

# Home env
( [[ -L ~/.zshenv ]] || [[ -f ~/.zshenv ]] ) && rm -f ~/.zshenv
ln -s "$DOTFILES/zsh/.home.zshenv" ~/.zshenv

# ZDOTDIR
[[ -d $XDG_CONFIG_HOME/zsh ]] && rm -rf $XDG_CONFIG_HOME/zsh
mkdir --parents $XDG_CONFIG_HOME/zsh
ln -s "$DOTFILES/zsh/.zshenv" $XDG_CONFIG_HOME/zsh
ln -s "$DOTFILES/zsh/.zshrc" $XDG_CONFIG_HOME/zsh

# oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
