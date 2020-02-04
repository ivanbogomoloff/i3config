#!/bin/bash
i3status | while :
#do
#        read line
#        echo "mystuff | $line" || exit 1
#done
do
	read line
	FREEKB=`awk '/MemAvailable/ {print $2}' /proc/meminfo`
	FREEMB=`expr $FREEKB / 1024`
	LGCODE=$(xset -q | grep "LED mask:" | awk '{ print $10 }')
	if [ $LGCODE == 00000000 ] || [ $LGCODE == 00000002 ]
	then
		echo "en | $FREEMB Mb |$line" || exit 1
	fi
	if [ $LGCODE == 00001004 ] || [ $LGCODE == 00001000 ]
	then
		echo "ru | $FREEMB Mb | $line" || exit 1
	fi
	#echo "$dat | $line" || exit 1
done
