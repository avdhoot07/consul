#!/bin/bash

#returns 0 if every array is OK

/usr/sbin/hpssacli controller slot=1 array all show status | grep 'OK$'

