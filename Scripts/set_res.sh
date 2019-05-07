#!/bin/bash

BIGMON=$(xrandr | grep -wo "DP1 connected")
OPAON=$(pgrep compton)

if [[ -n "$BIGMON" ]]; then
	xrandr --output DP1 --auto --primary
	xrandr --output DP1 --brightness 1.0
	xrandr --output eDP1 --off
else
	xrandr --output eDP1 --mode 1920x1080 --primary --dpi 72
	#xrandr --output eDP1 --auto --primary --dpi 220
	xrandr --output eDP1 --set BACKLIGHT 1500
fi

feh --randomize --bg-fill ~/Pictures/wallpapers/*

if [[ -z $OPAON ]]; then
        compton
	#compton --opacity-rule 85:'class_g = "st"'
fi
