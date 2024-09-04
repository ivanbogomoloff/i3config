#!/usr/bin/env bash

step=10000
b=$(cat /sys/class/backlight/intel_backlight/brightness)
v="$(($b - $step))"
if [ $v -lt 5 ]; then
	v=5
fi

echo $v > /sys/class/backlight/intel_backlight/brightness
