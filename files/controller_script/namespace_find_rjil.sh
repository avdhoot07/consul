#/bin/bash

. /root/openrc
NAME_SPACE=$(neutron router-list | grep 5b2bc9b3-f902-4f6f-9433-76e010658b4c | awk {'print $2'} | wc -l)
#NAME_SPACE=$(neutron router-list | grep f821c187-42b2-45c2-94e0-5786c060aa03 | awk {'print $2'} | wc -l)
if [ "$NAME_SPACE" -eq "0" ]
   then
        echo "0"
else
        echo "1" #Something is wrong 
fi
echo "" #End

