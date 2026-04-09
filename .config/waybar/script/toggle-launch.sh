#!/usr/bin/env bash

if pgrep -x waybar > /dev/null; then
    pkill -9 waybar
    while pgrap -x waybar > /dev/null; do sleep 0.1; done
else
    waybar > /dev/null 2>&1 &
fi
