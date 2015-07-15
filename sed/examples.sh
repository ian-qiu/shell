#!/bin/bash

# delete "
sed -i 's/"//g' test.txt

# delete first line
sed -i '1d' test.txt

# print lines from 10 to end
sed -n '10,$p' test.txt
