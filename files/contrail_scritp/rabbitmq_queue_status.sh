#!/bin/bash

QUEUENAME=( `rabbitmqctl list_queues | grep -vw "\0$" | grep -v "Listing queues" | awk '{print $1}' ` )
REQCOUNT=( `rabbitmqctl list_queues | grep -vw "\0$" | grep -v "Listing queues" | awk '{print $2}' ` )
rabbitmqctl list_queues
if [ "${#REQCOUNT[@]}" -eq "0" ]
then
     exit 0
else
    for (( i=0 ; i < ${#REQCOUNT[@]}; i++ ))
    do
	if [ "${#REQCOUNT[$i]}" -gt "5000" ]
	then
	    exit 1
	fi
    done
fi
