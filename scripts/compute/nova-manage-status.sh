#!/bin/bash
service nova-compute status| grep start
if [ "$?" -eq "0" ];then
exit 0
else
exit 1
fi
