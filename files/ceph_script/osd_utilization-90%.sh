#!/bin/bash
ALL_DISK=`df -h | grep ceph`

echo "$ALL_DISK";
#for i in `df -h  | grep "ceph" | awk '{print $6}' | sed "s/%//"`;do
for i in `df -h  | grep "ceph" | awk '{print $1}' `;do
DF=`df -h | grep $i| awk '{print $5}'|cut -d% -f1`
if [ "$DF" -gt "90" ]; then
echo $i
exit 3
break 
fi
done
exit 0
