#!/bin/env bash

start=1316151453
# unix timestamp of 2014-01-01 00:00:00
end=`date -d'2014-01-01' +"%s"` 

while [[ $start -lt $end ]] ; do
    date -d @${start} +'%F %R:%S'
    start=$(($start+600))
done

# get timestamp 30 days ago
date -d '-30 days' +"%s"
# get date 30 days ago
date -d '-30 days' +"%Y-%m-%d"
