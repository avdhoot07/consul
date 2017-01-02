#!/bin/bash

service contrail-control status | grep RUNNING
SERVICE_STATUS=`echo $?`
contrail-status | grep "contrail-control " | grep active 
CONTRAIL_CONTROL_STATUS=`echo $?`
if [ $SERVICE_STATUS -eq 0 ] && [ $CONTRAIL_CONTROL_STATUS -eq 0 ];
then
	exit 0
else
	exit 1
fi

