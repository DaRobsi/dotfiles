#!/usr/bin/env bash

#bash strict
set -uo pipefail

killall -9 -q rwpspread

HOUR=$(date +"%H")
wpdir="undefined"

setday () {
	rwpspread -dp --backend swaybg --locker swaylock --image /home/$USER/Wallpapers/day
}

setnight () {
	rwpspread -dp --backend swaybg --locker swaylock --image /home/$USER/Wallpapers/night
}

settime() {
	if [[ $HOUR -le 6 || $HOUR -ge 17 ]]; then
		setnight
		wpdir=$"night"
	else
		setday
		wpdir=$"day"
	fi
}

while getopts 'dnt' OPTION; do
	case "$OPTION" in
		d)
			setday
			wpdir=$"day"
			;;
		n)
			setnight
			wpdir=$"night"
			;;
		t)
			settime
			;;
		?)
			echo "script usage: setwallpaper.sh [-d] [-n] [-t]" >&2
			exit 1
			;;
	esac
done
shift "$(($OPTIND -1))"

dunstify "setwallpaper.sh" "Wallpaper set from $wpdir dir!"
