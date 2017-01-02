#!/bin/bash
. /root/openrc
crm resource status p_rabbitmq-server| grep 'p_rabbitmq-server is running'
if [ "$?" -eq "0" ];then
exit 0
else 
exit 1
fi
