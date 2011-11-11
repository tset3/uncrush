#!/bin/sh

pngcrush_loc="/Developer/Platforms/iPhoneOS.platform/Developer/usr/bin/pngcrush"

for file in *
do
	if $pngcrush_loc -revert-iphone-optimizations -q $file $file.webinar >> /dev/null
	then
		rm $file && mv $file.webinar $file
	fi
done