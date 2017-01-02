#!/bin/bash

SPACE=`free | grep 'Swap' | awk '{print $4/$2 }'`
SWAP=`awk 'BEGIN { print ($SPACE <= 10.0) ? "0" : "1" }'`
echo "$SWAP"

