#!/usr/bin/env bash

#bash strict
set -uo pipefail

killall -9 -q rwpspread

hour=$(date +"%H")

if [[ $hour -le 6 || $hour -ge 20 ]]; then
	rwpspread -dp --backend hyprpaper --image /home/$USER/Wallpapers/night
else
	rwpspread -dp --backend hyprpaper --image /home/$USER/Wallpapers/day
fi

dunstify "setwallpaper.sh" "Wallpaper set!"
