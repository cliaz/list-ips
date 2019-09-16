#!/bin/bash
for p in `ifconfig -l`; do
	ip=`ifconfig $p | grep 'inet ' | grep -v 127.0.0.1 | cut -d\  -f2`
	if [ -n "$ip" ]; then
		printf "$p:	$ip\n"
	fi
done

external=`curl -s ifconfig.co`
printf "external:	$external\n"