#!/usr/bin/env bash

step=10000
b=$(cat /sys/class/backlight/intel_backlight/brightness)
v="$(($b + $step))"
if [ $v -gt 120000 ]; then
	v=120000
fi

echo $v > /sys/class/backlight/intel_backlight/brightness
