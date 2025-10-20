#!/usr/bin/env bash

notify-send "System Resources" "CPU: $(vmstat 1 2 | tail -1 | awk '{print 100-$15}')%
RAM: $(free -h | awk '/^Mem:/ {print $3 " / " $2 " (" int($3/$2 * 100) "%)"}')" -t 5000 -i computer
