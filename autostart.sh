#!/bin/bash

sleep 2;

xmodmap -e "keycode 112="
xmodmap -e "keycode 117="

xmodmap -e "keycode 75=Prior NoSymbol Prior"
xmodmap -e "keycode 63=Next NoSymbol Next"
