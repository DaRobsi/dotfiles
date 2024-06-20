#! /usr/bin/env bash

CONFIG="$(cat /home/$USER/.cache/rwpspread/rwps_swaylock.conf)"

swaylock -l \
  --ring-color blue \
  --text-wrong-color red \
  --indicator-radius 250 \
  --indicator-thickness 7 \
  --inside-color 00000000 \
  --layout-border-color gray \
  --font-size 30 \
  $CONFIG
