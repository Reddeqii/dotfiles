#!/usr/bin/bash

# Dependencies
# -- Rofi
# -- Bash
# -- Kitty

choice=$(printf "Apps\nFile Browser" | rofi -dmenu -p "Launcher")

case $choice in
	"Apps") rofi -show drun > /dev/null 2>&1 &
	;;
        "File Browser") kitty -e fzf > /dev/null 2>&1 &
	;;
esac
