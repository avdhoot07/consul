#!/bin/bash

RAM=`free -m | grep Mem` 
FREE_RAM=`echo $RAM | cut -f3 -d' '`
TOTAL_RAM=`echo $RAM | cut -f2 -d' '`
RAM_UTILIZATION=$((100*$FREE_RAM/$TOTAL_RAM)) 
RAM_UTILIZATION=${RAM_UTILIZATION%.*}

echo "RAM Usage: "$RAM_UTILIZATION"%"

if (( $RAM_UTILIZATION > 75 ));
then
    exit 2
fi

if (( $RAM_UTILIZATION > 50 ));
then
    exit 1
fi

exit 0
