#!/bin/sh
now=`date "+%F-%T-volumes"`
GSUTIL_PATH=/app/google-cloud-sdk/bin/gsutil
tar -jcvf $now.tar.bz2 ./volumes
$GSUTIL_PATH cp ./$now.tar.bz2 gs://nakalab-wiki/
rm -f ./$now.tar.bz2
