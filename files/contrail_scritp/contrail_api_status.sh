#!/bin/bash

service contrail-api status | grep RUNNING
SERVICE_STATUS=`echo $?`
contrail-status | grep "contrail-api" | grep active 
CONTRAIL_API_STATUS=`echo $?`
if [ $SERVICE_STATUS -eq 0 ] && [ $CONTRAIL_API_STATUS -eq 0 ];
then
	exit 0
else
	exit 1
fi

