#!/bin/bash

SWAP=`free -m | grep Swap` 
FREE_SWAP=`echo $SWAP | cut -f3 -d' '`
TOTAL_SWAP=`echo $SWAP | cut -f2 -d' '`
SWAP_UTILIZATION=$((100*$FREE_SWAP/$TOTAL_SWAP)) 
SWAP_UTILIZATION=${SWAP_UTILIZATION%.*}

echo "Swap Usage: "$SWAP_UTILIZATION"%"

if (( $SWAP_UTILIZATION > 75 ));
then
    exit 2
fi

if (( $SWAP_UTILIZATION > 50 ));
then
    exit 1
fi

