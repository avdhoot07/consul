#!/bin/bash

server=10.140.96.25

if nc -z $server 22 2>/dev/null; then
	echo "0"
else
	echo "1"
fi


