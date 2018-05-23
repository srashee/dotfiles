#!/bin/bash

[ -f "$1" ] || exit 1

pkill -9 xwinwrap

xwin="xwinwrap -ni -b -nf -ov -g 2560x1440 -- "

mpv="mpv --wid WID --no-config --keepaspect=no --loop \
    --no-border --vd-lavc-fast --x11-bypass-compositor=no \
    --gapless-audio=yes --vo=xv --hwdec=auto --really-quiet \
    --name=mpvbg --geometry=2560x1440+0+0"

$xwin $mpv "$1"  &

# uncomment to set wall on 2nd monitor
#feh --bg-scale /home/shane/Pictures/pixelart/frames/magnify_00000.png

echo -n $! > ${HOME}/.cache/mpvbg.pid
