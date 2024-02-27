
xrdb ~/.config/X11/.Xresources
polybar --config=/home/rustam/.config/polybar/config.ini &
pgrep syncthing || syncthing 2> /dev/null &

exec i3
