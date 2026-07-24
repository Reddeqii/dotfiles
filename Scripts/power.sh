#!/usr/bin/env bash

choice=$(printf "  Power Off\n  Reboot\n  Log Out\n  Lock Screen" | rofi -dmenu -theme-str 'sidebar-image { background-image: url("'$(cat ~/.cache/wal/wal)'", height); }' -p "Power Options")

case "$choice" in
	"  Power Off") poweroff & ;;
	"  Reboot") reboot & ;;
	"  Log Out") swaymsg exit & ;;
	"  Lock Screen") swaylock & ;;
esac
