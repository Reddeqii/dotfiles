#!/usr/bin/env bash

choice=$(printf "Terminal (Win + Enter)\nApp Launcher (Win + D)\nFull Screen (Win + F)\nLauncher (Win + Shift + D)\nQuit App (Win + Q)\nExit Session (Win + Shift + E)" | rofi -dmenu -theme-str 'sidebar-image { background-image: url("'$(cat ~/.cache/wal/wal)'", height); }' -p "Help")
