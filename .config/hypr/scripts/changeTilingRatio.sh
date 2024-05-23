#! /usr/bin/env bash

set -uo pipefail

SPLIT_RATIO=$(hyprctl getoption dwindle:split_width_multiplier | grep 1)

if [[ $SPLIT_RATIO -eq 1.0 && $LAYOUT = "dwindle" ]]; then
    hyprctl keyword dwindle:split_width_multiplier 1.8
    SPLIT_RATIO=1.8
    MSG="Set split ratio to 1.8"
elif [[ $SPLIT_RATIO -eq 1.8 && $LAYOUT = "dwindle" ]]; then
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

