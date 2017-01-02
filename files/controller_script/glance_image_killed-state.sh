#!/bin/sh
# 14.01.2014 - TJAROSZEWSKI@MIRANTIS.COM
GLANCE_DB_USER='glance'
GLANCE_DB_PASS=Tz7hc5ky
VOLUMES=`mysql -N -L -s -u ${GLANCE_DB_USER} -p${GLANCE_DB_PASS} -e "select count(*) from images where status='killed'" glance;`;

if [ $? -ne 0 ]; then
	echo "Problem connecting to mysql";
	exit 1;
fi

if [ $VOLUMES -ne 0 ]; then
	echo "WARNING: Images in killed state - error occurred during the uploading of an image dat. Image is not readable (count: $VOLUMES)";
fi

exit 0;
# EOF
