#!/bin/bash

service rabbitmq-server status | grep RUNNING
SERVICE_STATUS=`echo $?`
contrail-status | grep "rabbitmq-server" | grep active 
RABBITMQ_STATUS=`echo $?`
if [ $SERVICE_STATUS -eq 0 ] && [ $RABBITMQ_STATUS -eq 0 ];
then
	exit 0
else
	exit 1
fi

