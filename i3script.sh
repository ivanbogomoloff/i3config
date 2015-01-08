#!/bin/bash
i3status | while :
#do
#        read line
#        echo "mystuff | $line" || exit 1
#done
do
	read line
	LGCODE=$(xset -q | grep "LED mask:" | awk '{ print $10 }')
	if [ $LGCODE == 00000000 ] || [ $LGCODE == 00000002 ]
	then
		echo "en | $line" || exit 1
	fi
	if [ $LGCODE == 00001006 ]
	then
		echo "ru | $line" || exit 1
	fi
	#echo "$dat | $line" || exit 1
done
