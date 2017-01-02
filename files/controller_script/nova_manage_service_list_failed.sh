#!/bin/bash

nova-manage service list | grep 'XXX'
if [ "$?" -eq "1" ];then
exit 0
else
exit 1
fi
