#!/bin/bash

while true; do
	# Unicode upwards trend graph
	#echo -e "$(cat /proc/loadavg | awk '{print $1}')\xf0\x9f\x93\x88"
	echo "=$(cat /proc/loadavg | awk '{print $1}')"
	# cat /proc/loadavg | awk '{print $1}'
	sleep 2
done
