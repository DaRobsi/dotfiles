#!/usr/bin/env bash

# bash strict
set -uo pipefail

hyprctl switchxkblayout usb-hid-gmmk-2-full-size-96% next
dunstify "setKeyboardLayout.sh" "Changed keyboard layout!"
