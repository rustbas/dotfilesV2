urxvtd -o -q -f
xrdb ~/.config/urxvt/.Xresources
polybar --config=/home/rustam/.config/polybar/config.ini &
#pgrep syncthing || syncthing 2> /dev/null &

exec i3
