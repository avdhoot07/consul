#!/bin/bash 
PS=`ps -ef | grep ceph-osd| grep -v Warning| wc -l`
if [ "$PS"  -gt 2 ];then
echo "ceph-osd process is running"
exit 0
else
exit 1
fi
