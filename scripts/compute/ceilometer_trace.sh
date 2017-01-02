#!/bin/sh

REGEX=".*broker forced connection closure with reason.*$";
#REGEX=".*INFO.*$";

# If you want to reuse it please change two Lined: File=.. and COUNTER_LOG_FILE=..
FILE="/var/log/ceilometer/ceilometer-agent-compute.log";
COUNTER_LOG_FILE="/var/log/zabbix/.scripts/counter_ceilometer_check";

if [ ! -e $FILE ]; then
        exit 0;
fi

FILE_SIZE=`wc -l $FILE | awk '{print$1}'`;
BASE_SIZE=1;

# Check and if does not exists, create file with base size
if [ ! -e ${COUNTER_LOG_FILE} ]; then
        mkdir -p /var/log/zabbix/.scripts/;
        touch ${COUNTER_LOG_FILE};
        if [ $? -ne 0 ]; then
                echo "ERROR: Cannot create counter file ${COUNTER_LOG_FILE}";
        fi
        echo $BASE_SIZE > ${COUNTER_LOG_FILE};
else # Read previous size of file
        BASE_SIZE=`head -1 ${COUNTER_LOG_FILE} | awk '{print$1}'`;
fi;

# Read previous size of file and if it is lower than current reset size couter
if [ ${FILE_SIZE} -lt ${BASE_SIZE} ]; then BASE_SIZE=1; fi;

# Check file in specific range number
sed -e "${BASE_SIZE},${FILE_SIZE}!d" ${FILE} | sed -n "/${REGEX}/{x;p;}";
if [ $? -eq 0 ]; then
        # Update counter
        echo ${FILE_SIZE} > ${COUNTER_LOG_FILE};
fi

exit 0;
#EOF

