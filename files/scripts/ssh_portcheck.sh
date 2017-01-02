#!/bin/bash
nc -z -v -w5 consul-1 22
if [ "$?" -eq "0" ];then
exit 0
else
exit 1
fi

