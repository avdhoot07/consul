#!/bin/bash

DISKIOOVER=` vmstat  | tail -1 | awk '{print $NF}'`

echo "DISK IO OVERLOADED :" $DISKIOOVER "%"

if [ "$DISKIOOVER" -gt "25" ];
then
    exit 2
elif [ "$DISKIOOVER" -gt "10" ];
then 
    exit 1
fi

