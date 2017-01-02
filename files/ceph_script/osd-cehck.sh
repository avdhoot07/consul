#!/bin/bash
DF=`df -h | grep ceph| wc -l`
DF1=$(( $DF + 1 ));
OSD=`ps -ef | grep ceph | grep -iv 'color\|auto' | wc -l`

if [ "$DF1" -eq "$OSD" ];then
echo "All $DF ceph-osd is running";
exit 0;
else
echo "$OSD osd process running and $DF osd mounted";
exit 1;
fi

