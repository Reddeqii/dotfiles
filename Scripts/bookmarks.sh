#!/usr/bin/env bash

choice=$( printf "Terminal (Kitty)\nBrowser (Firefox)\nText Editor (Neovim)\nGodot" | rofi -dmenu -theme-str 'sidebar-image { background-image: url("'$(cat ~/.cache/wal/wal)'", height); }' -p "Bookmarks")

case "$choice" in
	"Terminal (Kitty)") kitty & ;;
	"Browser (Firefox)") firefox & ;;
	"Text Editor (Neovim)") nvim & ;;
	"Godot") kitty -e cd ~/Downloads && ./Godot_v3.5-stable_x11.64
esac
