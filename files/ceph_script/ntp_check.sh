#!/bin/bash
PS=`ps -ef | grep ntp  | wc -l`
if [ "$PS" -lt "2" ]; then
echo "ntpd process not running";
exit 1
else
echo "ntpd process is running";
exit 0
fi
