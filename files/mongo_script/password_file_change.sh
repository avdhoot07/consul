#!/bin/bash
CF=`find /etc/passwd -mmin -30 -ls |wc -l`
if [ "$CF"  -gt '0' ];
then 
  exit 1
else
  exit 0
fi
