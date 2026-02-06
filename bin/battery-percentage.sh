#!/bin/bash

while true; do
	# Unicode battery
	# echo -e "$(upower -i /org/freedesktop/UPower/devices/battery_BAT0 | grep percentage | awk '{print $2}')\xf0\x9f\x94\x8b"
	upower -i /org/freedesktop/UPower/devices/battery_BAT0 | grep percentage | awk '{print $2}'
	sleep 2
done
