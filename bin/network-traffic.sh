#!/bin/bash
WIFI_DEVICE=$(nmcli --get-values GENERAL.DEVICE,GENERAL.TYPE device show | awk '/^wifi$/{print dev; next};{dev=$0};')

while true; do
	NETWORK_OUTPUT=$(ifstat -qwni ${WIFI_DEVICE} 0.1 1 | tail -n 1)
	DOWN=$(echo ${NETWORK_OUTPUT} | awk '{print $1}')
	UP=$(echo ${NETWORK_OUTPUT} | awk '{print $2}')
	# echo "↓${DOWN}/↑${UP}"
	echo "${DOWN}/^${UP}"
	sleep 2
done
