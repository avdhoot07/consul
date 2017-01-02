#!/bin/bash

service ifmap status | grep RUNNING
SERVICE_STATUS=`echo $?`
contrail-status | grep ifmap | grep active 
IFMAP_STATUS=`echo $?`
if [ $SERVICE_STATUS -eq 0 ] && [ $IFMAP_STATUS -eq 0 ];
then
	exit 0
else
	exit 1
fi

