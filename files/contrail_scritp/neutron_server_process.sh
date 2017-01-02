#!/bin/bash

if  ps -ef | grep [n]eutron-server ; 
then
	exit 0
else
	exit 1
fi

