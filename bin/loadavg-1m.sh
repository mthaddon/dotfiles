#!/bin/bash

while true; do
  cat /proc/loadavg | awk '{print $1}'
  sleep 2
done
