#!/bin/bash

DATE=$(date +%F-%H-%M)
BACKUP_DIR=backups

mkdir -p $BACKUP_DIR

echo "Taking MySQL backup..."

docker exec wordpress-multitenant_mysql_1 \
  mysqldump -uroot -p$MYSQL_ROOT_PASSWORD --all-databases \
  > $BACKUP_DIR/db-backup-$DATE.sql

echo "Backup saved at $BACKUP_DIR/db-backup-$DATE.sql"