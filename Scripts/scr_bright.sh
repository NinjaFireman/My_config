#!/bin/bash

CHKMON=$(xrandr | grep -wo "eDP1 connected primary")

if [[ -n $CHKMON ]]; then
	xrandr --output eDP1 --set BACKLIGHT "$(echo "$(xrandr --verbose |grep -m 1 BACKLIGHT |grep -o '[0-9].*')$1 150" | bc)"
else
        xrandr --output DP1 --brightness "$(echo "$(xrandr --verbose |grep -m 1 Brightness |grep -o '[0-9].*')$1 0.1" | bc)"
fi
