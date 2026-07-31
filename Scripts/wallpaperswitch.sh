#!/usr/bin/env bash

choice=$(ls ~/Pictures | rofi -dmenu -p "Wallpapers")

if [ -n "$choice" ]; then
	target="$HOME/Pictures/$choice"

	awww img "$target"

fi

wait
