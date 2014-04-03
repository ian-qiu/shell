#!/bin/sh

pid=1

if `sudo kill -0 $pid`;then
	echo "process $pid exists!"
fi
echo $a
