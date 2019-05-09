#!/usr/bin/env bash

pkill -u "$USER" -USR1 dunst

icon="$HOME/Pictures/moto.png"
tmpbg='/tmp/screen.png'

(( $# )) && { icon=$1; }

scrot "$tmpbg"
convert "$tmpbg" -scale 10% -scale 1000% "$tmpbg"
convert "$tmpbg" "$icon" -gravity center -composite -matte "$tmpbg"
i3lock -u -i "$tmpbg"

pkill -u "$USER" -USR2 dunst
