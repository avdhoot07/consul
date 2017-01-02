#!/bin/bash
CF=`find /etc/hostname -mmin -30 -ls |wc -l`
echo "Hostname:" `hostname`
if [ "$CF"  -gt '0' ];
then 
  exit 1
else
  exit 0
fi
