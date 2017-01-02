#!/bin/bash

service openstack-murano-engine status | grep running
if [ "$?" -eq "0" ];then
exit 0
else
exit 1
fi
