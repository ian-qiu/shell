#!/bin/bash

start(){
	sudo /usr/sbin/openvpn --writepid /var/run/openvpn.qiu.yiyi.pid --daemon ovpn-qiu.yiyi --status /var/run/openvpn.qiu.yiyi.status 10 --cd /etc/openvpn --config /etc/openvpn/qiu.yiyi.ovpn --script-security 2
}

stop(){
	sudo pkill openvpn
}

case "$1" in 
	start)
		start
	;;
	stop)
		stop
	;;
	restart)
		stop
		start
	;;
	*)
		echo "./openvpn.sh (start|stop|restart)"
	;;
esac
