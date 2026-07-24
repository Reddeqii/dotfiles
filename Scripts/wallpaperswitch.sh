#!/usr/bin/env bash

# 1. Safely grab the current wallpaper path for Rofi (handling quotes cleanly)
CURRENT_WAL=$(cat "$HOME/.cache/wal/wal" 2>/dev/null)

# 2. Select the wallpaper using the correct uppercase $HOME variable
choice=$(ls "$HOME/Pictures" 2>/dev/null | rofi -dmenu -theme-str "sidebar-image { background-image: url(\"$CURRENT_WAL\"); }" -p "wallpapers")

if [ -n "$choice" ]; then
    target="$HOME/Pictures/$choice"

    # 4. Push to awww for smooth transitions
    awww img "$target" --transition-type outer || true

    # 5. Reset Waybar
    pkill waybar || true
    waybar > /dev/null 2>&1 &
fi

wait

