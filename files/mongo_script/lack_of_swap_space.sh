#!/bin/bash
TSM=`free -m | grep 'Swap' | awk '{print ($2)}'`
USM=`free -m | grep 'Swap' | awk '{print ($3)}'`
CSM1=`free -m | grep 'Swap' | awk '{print ($2*.5)}'`

if [ "$USM"  -gt `echo ${CSM1%.*}` ];
then
    exit 1
fi

exit 0
