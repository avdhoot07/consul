#!/bin/bash
cd /usr/local/bin
ipaddr=`ip r l| grep 10.135.165| awk {'print $9'}| grep -v '^$'`;

python get_vrouter_error.py
ret=$?
if [ "$ret"  -eq "0"  ];
then
echo "http://$ipaddr:8085/Snh_ItfReq?name="
fi
