monitors=$(xrandr --query | grep -c " connected")
if [ $monitors -eq "3" ]; then
    ~/.i3/monitor.sh
    exit;
elif [ $monitors -eq "1" ]; then
    ~/.i3/oneMon.sh
    exit;
fi
