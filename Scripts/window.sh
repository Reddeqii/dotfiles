#!/usr/bin/env bash

choice=$(printf "+  New Window\nX  Close Window\n  Find File\n  Edit File" | rofi -dmenu -theme-str 'sidebar-image { background-image: url("'$(cat ~/.cache/wal/wal)'", height); }' -p "Window")

case "$choice" in
	"+  New Window") rofi -show drun -theme-str 'sidebar-image { background-image: url("'$(cat ~/.cache/wal/wal)'", height); }' & ;;
	"X  Close Window") swaymsg kill & ;;
	"  Find File") kitty -e fzf & ;;
	"  Edit File") kitty -e vim & ;;
esac
