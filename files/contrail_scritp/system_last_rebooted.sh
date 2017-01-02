#!/bin/bash
rmonth=`last reboot |tail -n 1|awk '{print $4}'`
rdate=`last reboot |tail -n 1|awk '{print $5}'`
ryear=`last reboot |tail -n 1|awk '{print $7}'`
rhour=`last reboot |awk '{print $6}'| cut -d':' -f1 |tail -n 1`
echo "Last Rebooted on: "`last reboot |sed -e 's/wtmp begins //'`
chour=`(date +%H)`
cyear=`(date +%Y)`
cmonth=`(date +%b)`
cdate=`(date +"%Oe")`
if [ $ryear = $cyear ] && [ $rmonth == $cmonth ] && [ $rdate = $cdate ] && [ $rhour = $chour]; 
then
    exit 1
else
   exit 0
fi
