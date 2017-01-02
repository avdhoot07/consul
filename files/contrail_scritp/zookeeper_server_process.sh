#!/bin/bash

if  ps -ef | grep [z]ookeeper ; 
then
	exit 0
else
	exit 1
fi

