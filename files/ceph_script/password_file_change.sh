#!/bin/bash
CF=`find /etc/passwd -mmin -30 -ls |wc -l`
LAST_MODIFIED=`stat /etc/passwd | grep Modify`
echo "Last $LAST_MODIFIED"
if [ "$CF"  -eq '0' ];
then
  exit 0
else
  exit 1
fi

