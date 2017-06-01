#!/usr/bin/env bash

if [ $# -ne 0 ]; then
	proc=$(ps aux | grep [n]ode)
	echo $proc
	for var in "$@"
	do
		echo $var
		proc=$($proc | grep $var | grep -v grep)
	done
	echo $($proc | awk '{print $2}')
fi
exit 1
