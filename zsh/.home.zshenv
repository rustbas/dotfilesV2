# Set ZDOTDIR for pure home directory
export ZDOTDIR=/home/rustam/.config/zsh

# Dirty hack for login for the first time (i don't want touch /etc/zsh/zshenv)
if [ -f $ZDOTDIR/.zshenv ]
then
	source $ZDOTDIR/.zshenv
fi
