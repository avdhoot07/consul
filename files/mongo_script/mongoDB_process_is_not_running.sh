#!/bin/bash

server=localhost

if nc -z $server 27017 2>/dev/null; then
	echo "0"
else
	echo "1"
fi


