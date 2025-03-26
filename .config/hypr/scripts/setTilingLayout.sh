#!/bin/bash

set -uo pipefail

LAYOUT=$(hyprctl getoption general:layout | grep str)

if [[ $LAYOUT == "str: dwindle" ]]; then
	hyprctl keyword general:layout master
	dunstify -r 66001 -u low "Hyprland Layout" "Set to Master"
elif [[ $LAYOUT == "str: master" ]]; then
	hyprctl keyword general:layout dwindle
	dunstify -r 66002 -u low "Hyprland Layout" "Set to Dwindle"
fi
