#!/bin/bash
MAXPROCESS=`cat /proc/sys/kernel/pid_max`
PROCESSES=`ps -eaf | wc -l`
echo "Processes Running:" $PROCESSES
if (( $PROCESSES >= $MAXPROCESS ));
then
    exit 1
fi

exit 0

