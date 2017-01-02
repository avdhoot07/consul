#!/bin/bash

if service haproxy status | grep 'haproxy is running.' ; 
then
	exit 0
else
	exit 1
fi

