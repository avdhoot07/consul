#!/bin/bash

#OPENED_FILES=`cat /proc/sys/fs/file-max`
OPENED_FILES=`lsof |wc -l`
if (( $OPENED_FILES < 1024 ));
then
    exit 1
fi

exit 0

