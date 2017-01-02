#!/bin/sh
# 05.01.2014 - TJAROSZEWSKI@MIRANTIS.COM
#VOLUMES=`mysql -e "select count(*) from volumes where status='deleting'" cinder;`;
CINDER_DB_USER='cinder'
CINDER_DB_PASS=XownafMx
VOLUMES=`mysql -N -L -s -u ${CINDER_DB_USER} -p${CINDER_DB_PASS} -e "select count(*) from snapshots where progress NOT LIKE '100%'" cinder;`;

if [ $? -ne 0 ]; then
	echo "Problem connecting to mysql";
	exit 1;
fi

if [ $VOLUMES -ne 0 ]; then
	echo "WARNING: Snapshots (count: $VOLUMES) are being slow or not progressing";
fi

exit 0;
# EOF
