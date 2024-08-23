#!/bin/zsh

# Completion
autoload -U compinit
compinit
 
# Correction
# setopt correctall
  
# Prompt
autoload -U promptinit
promptinit
prompt default

# aliases
[[ -f $ZDOTDIR/aliases.sh ]] && source $ZDOTDIR/aliases.sh 
