#!/bin/sh

# Get out of town if something errors
set -e

CHARGER_STATUS=$(</sys/class/power_supply/ADP1/online)

if [ "1" == "$CHARGER_STATUS" ]; then
	echo "1"
	xrandr --output "eDP-1" --mode 2560x1600 --rate 120
elif [ "0" == "$CHARGER_STATUS" ]; then
	echo "0"
	xrandr --output "eDP-1" --mode 2560x1600 --rate 60
fi
