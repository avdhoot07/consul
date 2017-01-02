#!/bin/bash

export LC_ALL=C
source /root/openrc
/usr/bin/glance image-list | grep -c active



