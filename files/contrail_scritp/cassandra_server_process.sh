#!/bin/bash

if  ps -ef | grep [c]assandra ; 
then
	exit 0
else
	exit 1
fi

