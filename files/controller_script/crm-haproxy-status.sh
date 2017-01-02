#!/bin/bash
. /root/openrc
crm resource status p_haproxy | grep 'p_haproxy is running'
if [ "$?" -eq "0" ];then
exit 0
else 
exit 1
fi
