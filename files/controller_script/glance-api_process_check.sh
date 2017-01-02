#!/bin/bash

ps -ef| grep glance-api | grep -v color=auto
if [ "$?" -eq "0" ];then
exit 0
else
exit 1
fi
