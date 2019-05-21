#!/bin/bash

[ -f "$1" ] || exit 1

pkill -9 xwinwrap

xwin="xwinwrap -ni -b -nf -ov -g 1600x900 -- "

mpv="mpv --wid WID --no-config --keepaspect=no --loop \
    --no-border --vd-lavc-fast --x11-bypass-compositor=no \
    --gapless-audio=yes --vo=xv --hwdec=auto --really-quiet \
    --name=mpvbg --geometry=1600x900+0+0"

$xwin $mpv "$1"  &

# uncomment to set wall on 2nd monitor
feh --bg-scale /home/saad/bin/wall.gif

echo -n $! > ${HOME}/.cache/mpvbg.pid
