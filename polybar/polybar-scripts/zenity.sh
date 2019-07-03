#!/bin/bash

#calOutput=$(python ~/.config/polybar/daily.py)
#echo $calOutput
#zenity --text-info --title = "Calendar" --text=$calOutput

python ~/.config/polybar/daily.py | zenity --title="Calendar" --text-info --width=500 --height=400 --no-wrap
