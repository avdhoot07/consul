#!/bin/bash

if ps -ef | grep  "[k]eepalived" ; 
then
	exit 0
else
	exit 1
fi

