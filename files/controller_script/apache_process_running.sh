#!/bin/bash

ps -ef| grep www-data | grep start
if [ "$?" -eq "0" ];then
exit 0
else
exit 1
fi
