#/bin/bash

. /root/openrc
NAME_SPACE=$(neutron router-list | grep f821c187-42b2-45c2-94e0-5786c060aa03 | awk {'print $2'} | wc -l)
if [ "$NAME_SPACE" -eq "0" ]
   then
        echo "0"
else
        echo "1" #Something is wrong 
fi
echo "" #End

