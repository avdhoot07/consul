#!/bin/bash

service contrail-database status | grep RUNNING
SERVICE_STATUS=`echo $?`
contrail-status | grep "contrail-database " | grep active 
CONTRAIL_DB_STATUS=`echo $?`
if [ $SERVICE_STATUS -eq 0 ] && [ $CONTRAIL_DB_STATUS -eq 0 ];
then
	exit 0
else
	exit 1
fi

