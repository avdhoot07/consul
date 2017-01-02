#!/bin/bash

ip link show | grep " eth[0-9]:" | grep DOWN
ip link show | grep " eth[0-9]:"
if [ "$?" -eq "0" ]
then
    exit 0
else
    exit 1
fi
