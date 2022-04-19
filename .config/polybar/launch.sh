#!/bin/bash

# Kill previous polybar
pkill polybar

# Run polybar on every monitor
for m in $(polybar --list-monitors | cut -d":" -f1); do
    MONITOR=$m polybar --reload main &
done
