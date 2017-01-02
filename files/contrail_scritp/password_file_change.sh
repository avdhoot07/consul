#!/bin/bash
CF=`find /etc/passwd -mmin -30 -ls |wc -l`
LAST_MODIFIED=`stat /etc/passwd | grep Modify`
echo "Last $LAST_MODIFIED"
if [ "$CF"  -gt '0' ];
then
  exit 1
else
  exit 0
fi

