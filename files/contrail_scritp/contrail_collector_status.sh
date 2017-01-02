#!/bin/bash

service contrail-collector status | grep RUNNING
SERVICE_STATUS=`echo $?`
contrail-status | grep "contrail-collector" | grep active 
CONTRAIL_COLLECTOR_STATUS=`echo $?`
if [ $SERVICE_STATUS -eq 0 ] && [ $CONTRAIL_COLLECTOR_STATUS -eq 0 ];
then
	exit 0
else
	exit 1
fi

