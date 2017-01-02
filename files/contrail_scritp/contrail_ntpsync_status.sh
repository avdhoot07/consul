#!/bin/bash

if contrail-status  | awk {'print $2'} |grep -Evi "Contrail|active|backup|time"| grep -v '^$';
then
	contrail-status |grep -Evi "active|backup|time|^==|^unix|crashes"
	exit 1
else
	echo "NTP Sync Ok"
	exit 0
fi

