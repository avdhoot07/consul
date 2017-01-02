#!/bin/bash

#returns 0 if every array is OK
#/usr/sbin/hpssacli controller slot=1 array all show status | grep array | grep -cv 'OK$'
RAID=`/usr/sbin/hpssacli controller slot=0 array all show status | grep 'OK'`
echo "$RAID"
if [[ $RAID =~ [^OK] ]];
then
    exit 0
fi
    exit 1

