#!/bin/bash

#dmenu prompt, $1 entrs prompt, $2 uses command

[ "$(echo -e "No\nYes" | dmenu -i -p "$1")" \
	== "Yes" ] && $2
