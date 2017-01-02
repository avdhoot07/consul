#!/bin/bash

ip link show | grep ' eth[134]' | grep DOWN
