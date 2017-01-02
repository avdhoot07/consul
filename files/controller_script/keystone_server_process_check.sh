#!/bin/bash

ps -ef| grep keystone | grep -v color=auto >>/dev/null
if [ "$?" -eq "0" ];then
exit 0
else
exit 1
fi
