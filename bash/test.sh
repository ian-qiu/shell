#!/bin/bash

number=11
file=/etc/init.d/networking
dir=/etc/init.d
program=`which ls`

echo $0
echo $@

if test -f $file ; then
	echo "$file is really a file"
fi

if [ -f $file ]; then
	echo "$file is really a file"
fi

if test -d $dir ; then
	echo "$dir is really a dir"
fi

if [ -d $dir ]; then
	echo "$dir is really a dir"
fi

if [[ $number > 10 ]];then
	echo "$number > 10"
fi

if test -x $program;then
	echo "$program can be executed"
fi


a="b" ./kill.sh
