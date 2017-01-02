#!/bin/bash

 ps -ef| grep memcached | grep -v color=auto
if [ "$?" -eq "0" ];then
exit 0
else
exit 1
fi
