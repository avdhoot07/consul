#!/bin/sh
# 14.01.2014 - TJAROSZEWSKI@MIRANTIS.COM
GLANCE_DB_USER='glance'
GLANCE_DB_PASS=Tz7hc5ky
VOLUMES=`mysql -N -L -s -u ${GLANCE_DB_USER} -p${GLANCE_DB_PASS} -e "select count(*) from images where status='queued'" glance;`;

if [ $? -ne 0 ]; then
	echo "Problem connecting to mysql";
	exit 1;
fi

if [ $VOLUMES -ne 0 ]; then
	echo "WARNING: The image identifier has been reserved for an image in the Glance registry. No image data has been uploaded to Glance and the image size was not explicitly set to zero on creation (count: $VOLUMES)";
fi

exit 0;
# EOF
