#############
# Variables #
#############

# I don't like it, but can't do better
DOTFILES="/home/$USER/ws/dotfilesV2"

XDG_CONFIG_HOME=$HOME/.config 
XDG_CACHE_HOME=$HOME/.cache 
XDG_DATA_HOME=$HOME/.local/share 
XDG_STATE_HOME=$HOME/.local/state 

############
# Setup lf #
############

[[ -L $XDG_CONFIG_HOME/lf ]] && rm -f $XDG_CONFIG_HOME/lf
ln -s "$DOTFILES/lf" $XDG_CONFIG_HOME/lf

##############
# Setup tmux #
##############

[[ -L $XDG_CONFIG_HOME/tmux ]] && rm -f $XDG_CONFIG_HOME/tmux
ln -s "$DOTFILES/tmux" $XDG_CONFIG_HOME/tmux

################
# Setup neovim #
################
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
[[ -L $XDG_CONFIG_HOME/nvim ]] && rm -f $XDG_CONFIG_HOME/nvim
ln -s "$DOTFILES/neovim" $XDG_CONFIG_HOME/nvim

############################
# Setup zsh (must be last) #
############################

# Home env
( [[ -L ~/.zshenv ]] || [[ -f ~/.zshenv ]] ) && rm -f ~/.zshenv
ln -s "$DOTFILES/zsh/.home.zshenv" ~/.zshenv

# ZDOTDIR
[[ -d $XDG_CONFIG_HOME/zsh ]] && rm -rf $XDG_CONFIG_HOME/zsh
mkdir --parents $XDG_CONFIG_HOME/zsh
ln -s "$DOTFILES/zsh/.zshenv" $XDG_CONFIG_HOME/zsh
ln -s "$DOTFILES/zsh/.zshrc" $XDG_CONFIG_HOME/zsh
# touch $XDG_CONFIG_HOME/.zshrc

# oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" &
sleep 10

# some settings
cat >> $XDG_CONFIG_HOME/zsh/.zshrc << EOF
#!/bin/zsh

# Completion
autoload -U compinit
compinit
 
# Correction
setopt correctall
  
# Prompt
# autoload -U promptinit
# promptinit
# prompt fire
EOF


