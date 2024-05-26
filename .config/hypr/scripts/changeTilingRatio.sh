#! /usr/bin/env bash

set -uo pipefail

SPLIT_RATIO=$(hyprctl getoption dwindle:split_width_multiplier | grep float | awk '{print $2}' | awk '{printf "%.1f\n", $1}')

if [[ $(echo "$SPLIT_RATIO==1.0" | bc -l) && "$LAYOUT" = "dwindle" ]]; then
    hyprctl keyword dwindle:split_width_multiplier 1.8
    SPLIT_RATIO=1.8
    MSG="Set split ratio to 1.8"
elif [[ $(echo "$SPLIT_RATIO==1.8" | bc -l) && "$LAYOUT" = "dwindle" ]]; then
    hyprctl keyword dwindle:split_width_multiplier 1.0
    SPLIT_RATIO=1.0
    MSG="Set split ratio to 1.0"
else
    MSG="Could not set split ratio!"
fi

dunstify \
  -r 66003 \
  -u low \
  "Dwindle Split Ratio" "$MSG"

