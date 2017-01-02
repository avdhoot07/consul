#!/bin/bash

DISKIOOVER=`top |head -n 3 |tail -n 1|awk '{print $6}'|cut -d'%' -f1`

echo "DISK IO OVERLOADED :" $DISKIOOVER "%"

if [ "`echo ${DISKIOOVER%.*}`" -gt "90" ];
then
    exit 1
fi

exit 0

