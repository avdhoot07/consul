#!/bin/bash

PROCESSES=`ps -eaf | wc -l`

if (( $PROCESSES < 256 ));
then
    exit 1
fi

exit 0

