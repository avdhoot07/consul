#!/usr/bin/python

import urllib3
import sys

http=urllib3.PoolManager()
url='http://localhost:8085/Snh_ItfReq?name='
response=http.request('GET',url)

count1=0
count2=0
v= "vrf-null"
o= "os-state-down"

if response.status == 200:
        mydata=response.data
        myarray=mydata.split("<ItfSandeshData>")
        for i in range(1,len(myarray)):
                myline=myarray[i]
                myerr=myline.split('<vrf_name type="string" identifier="4" link="VrfListReq">')
                error=myerr[1].split("</vrf_name>")
                myact=myline.split('<active type="string" identifier="5">')
                active=myact[1].split("</active>")
                mytap=myline.split('<name type="string" identifier="2">')
                tap=mytap[1].split("</name>")
                if error[0] == "--ERROR--" and tap[0] != "pkt0":
                        count1=count1+1
                if v in active[0] and o not in active[0]:
                        count2=count2+1
else:
        print "vrouter not running"
if count1 > 0 and count2 > 0:
        sys.exit(0)
else:
        sys.exit(1)

