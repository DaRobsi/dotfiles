#!/usr/bin/env bash

# bash strict
set -uo pipefail

case $1 in
    prev)
        # play prev
        playerctl previous
        ;;
    next)
        # play next
        playerctl next
        ;;
    pp)
        # playPause media
        playerctl play-pause 
		sleep 0.1
		STATUS="$(playerctl status)"
		dunstify -r 66000 -u low "Playerctl" $STATUS 
        ;;
esac
