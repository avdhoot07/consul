#!/bin/bash

if  service redis-server status | grep 'redis-server is running' ; 
then
	exit 0
else
	exit 1
fi

