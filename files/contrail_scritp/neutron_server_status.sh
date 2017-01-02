#!/bin/bash

if  service neutron-server status | grep 'start/running' ; 
then
	exit 0
else
	exit 1
fi

