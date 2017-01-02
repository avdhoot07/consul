#!/bin/bash

HDD_UTILIZATION=`df -i | awk '{if ($6 == "/var/lib/nova") { print $5 }}' | head -1 | cut -d'%' -f1`
HDD_UTILIZATION=${HDD_UTILIZATION%.*}

echo "HDD: "$HDD_UTILIZATION"%"

if (( $HDD_UTILIZATION > 75 ));
then
    exit 2
fi

if (( $HDD_UTILIZATION > 50 ));
then
    exit 1
fi

exit 0
