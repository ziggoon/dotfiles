#!/bin/bash

# Check if any external monitor is connected (anything that isn't eDP-1)
EXT=$(hyprctl monitors -j | jq -r '.[] | select(.name != "eDP-1") | .name' | head -1)

if [ -z "$EXT" ]; then
    # No external display — sleep
    systemctl suspend
else
    # External display connected — disable laptop screen and move workspaces
    hyprctl keyword monitor "eDP-1, disable"
    for i in 1 2 3 4 5; do
        hyprctl dispatch moveworkspacetomonitor "$i $EXT"
    done
fi
