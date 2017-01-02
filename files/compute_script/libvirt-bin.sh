#!/bin/bash
service libvirt-bin status | grep start
if [ "$?" -eq "0" ];then
exit 0
else
exit 1
fi
