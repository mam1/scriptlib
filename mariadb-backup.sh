#!/bin/bash
NOW=`date +%Y%m%d`
USER="user"
PASSWD="password"
HOST="localhost"
DIR="/path/to/backup/dir"
DB="digikam digikam-thumbnails digikam-recognition"
mkdir -p $DIR
mysqldump -u$USER -h$HOST -p$PASSWD \
--databases ${DB} > $DIR/$NOW-digikam-db.sql
cd $DIR
tar -zcvf $NOW-digikam-db.tar.gz $NOW-digikam-db.sql
rm $NOW-digikam-db.sql