#!/bin/bash

while true; do
  upower -i /org/freedesktop/UPower/devices/battery_BAT0 | grep percentage | awk '{print $2}'
  sleep 2
done
