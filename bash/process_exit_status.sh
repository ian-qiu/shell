#!/bin/env bash

while true; do
    php /home/qyy/bash_test.php > /dev/null 2>&1
    status_code=$?
    echo $status_code
    if [[ $status_code -eq 255 ]]; then
        break
    fi  
done

# <?php
# if(mt_rand(1,10) == 1){ 
#    throw new Exception('test exception');//$?=255
# }
# // $?=0
# //exit(3); // specify $?=3
# //exit(-1); // $?=255
