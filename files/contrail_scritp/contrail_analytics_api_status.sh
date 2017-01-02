#!/bin/bash

service contrail-analytics-api status | grep RUNNING
SERVICE_STATUS=`echo $?`
contrail-status | grep contrail-analytics-api | grep active 
CONTRAIL_ANALYTICS_STATUS=`echo $?`
if [ $SERVICE_STATUS -eq 0 ] && [ $CONTRAIL_ANALYTICS_STATUS -eq 0 ];
then
	exit 0
else
	exit 1
fi

