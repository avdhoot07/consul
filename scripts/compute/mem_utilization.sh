#!/bin/bash

FREE_RAM=`free -m |grep Mem|awk '{print $4}'`
TOTAL_RAM=`free -m |grep Mem|awk '{print $2}'`
RAM_UTILIZATION=`free -m |grep Mem|awk '{print $3}'`
RAM75PRCNT=`free -m | grep Mem | awk '{print ($2*.85)}'`
RAM50PRCNT=`free -m | grep Mem | awk '{print ($2*.70)}'`

echo "RAM UTILIZATION:" $RAM_UTILIZATION " OUT OF" $TOTAL_RAM

if [ "$RAM_UTILIZATION"  -ge `echo ${RAM75PRCNT%.*}` ];
then
    exit 2
fi

if [ "$RAM_UTILIZATION"  -ge `echo ${RAM50PRCNT%.*}` ];
then
    exit 1
fi

exit 0
