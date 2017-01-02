#!/bin/bash

PROCESSES=`ps -eaf | wc -l`
echo "Current Processes: $PROCESSES"
if (( $PROCESSES < 256 ));
then
    exit 1
fi


