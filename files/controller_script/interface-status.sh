#!/bin/bash

ip link show | grep ' eth[01234]' | grep DOWN
if [ "$?" -eq "1" ];then
exit 0
else
exit 1
fi
