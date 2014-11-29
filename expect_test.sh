#!/usr/bin/expect -f

set timeout 30

spawn ssh user@host ls

expect "password:"

send "password\r"

interact
