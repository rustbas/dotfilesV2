#!/bin/bash

#############
# Variables #
#############

set -xe

# I don't like it, but can't do better
DOTFILES="/home/$USER/ws/dotfilesV2"

XDG_CONFIG_HOME=$HOME/.config 
XDG_CACHE_HOME=$HOME/.cache 
XDG_DATA_HOME=$HOME/.local/share 
XDG_STATE_HOME=$HOME/.local/state 

#################
# Setup xinitrc #
#################

[[ -d $XDG_CONFIG_HOME/X11 ]] && rm -rf $XDG_CONFIG_HOME/X11
mkdir --parents $XDG_CONFIG_HOME/X11
ln -s "$DOTFILES/X11/xinitrc" $XDG_CONFIG_HOME/X11/xinitrc

############
# Setup lf #
############

[[ -d $XDG_CONFIG_HOME/lf ]] && rm -rf $XDG_CONFIG_HOME/lf
mkdir --parents $XDG_CONFIG_HOME/lf
ln -s "$DOTFILES/lf/lfrc" $XDG_CONFIG_HOME/lf/lfrc

##############
# Setup tmux #
##############

[[ -d $XDG_CONFIG_HOME/tmux ]] && rm -rf $XDG_CONFIG_HOME/tmux
mkdir --parents $XDG_CONFIG_HOME/tmux
ln -s "$DOTFILES/tmux/tmux.conf" $XDG_CONFIG_HOME/tmux/tmux.conf

######################
# Setup rxvt-unicode #
######################

[[ -d $XDG_CONFIG_HOME/urxvt ]] && rm -rf $XDG_CONFIG_HOME/urxvt
mkdir --parents $XDG_CONFIG_HOME/urxvt
mkdir --parents $HOME/.urxvt/ext
ln -s "$DOTFILES/urxvt/.Xresources" $XDG_CONFIG_HOME/urxvt/.Xresources
ln -s "$DOTFILES/urxvt/ext/resize-font" $HOME/.urxvt/ext/resize-font
xrdb -merge $XDG_CONFIG_HOME/urxvt/.Xresources

############
# Setup i3 #
############

[[ -d $XDG_CONFIG_HOME/i3 ]] && rm -rf $XDG_CONFIG_HOME/i3
mkdir --parents $XDG_CONFIG_HOME/i3
ln -s "$DOTFILES/i3/config" $XDG_CONFIG_HOME/i3/config

################
# Setup neovim #
################
# sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
[[ -L $XDG_CONFIG_HOME/nvim ]] && rm -f $XDG_CONFIG_HOME/nvim
ln -s "$DOTFILES/neovim" $XDG_CONFIG_HOME/nvim

############################
# Setup zsh (must be last) #
############################

# Home env
# ( [[ -L ~/.zshenv ]] || [[ -f ~/.zshenv ]] ) && rm -f ~/.zshenv
# ln -s "$DOTFILES/zsh/.home.zshenv" ~/.zshenv

# ZDOTDIR
# [[ -d $XDG_CONFIG_HOME/zsh ]] && rm -rf $XDG_CONFIG_HOME/zsh
# mkdir --parents $XDG_CONFIG_HOME/zsh
# ln -s "$DOTFILES/zsh/zshenv" $XDG_CONFIG_HOME/zsh/.zshenv
# ln -s "$DOTFILES/zsh/zshrc" $XDG_CONFIG_HOME/zsh/.zshrc
# ln -s "$DOTFILES/zsh/aliases.sh" $XDG_CONFIG_HOME/zsh/aliases.sh

# oh-my-zsh
# sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" &
# sleep 10

# some settings
# cat > $XDG_CONFIG_HOME/zsh/.zshrc << EOF
# #!/bin/zsh
# 
# # Completion
# autoload -U compinit
# compinit
 # 
# # Correction
# # setopt correctall
  # 
# # Prompt
# autoload -U promptinit
# promptinit
# prompt default
# EOF


