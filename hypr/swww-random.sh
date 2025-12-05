#!/bin/bash

WALLDIR="$HOME/Pictures/Wallpapers"

while true; do
    IMG=$(find "$WALLDIR" -type f \( -iname "*.png" -o -iname "*.jpg" -o -iname "*.jpeg" \) | shuf -n 1)

    swww img "$IMG" --transition-type simple --transition-duration 2

    sleep 300   # change every 5 minutes (300 sec)
done
