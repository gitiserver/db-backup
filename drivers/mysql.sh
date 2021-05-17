#!/bin/bash

FILENAME=$(date +"%Y-%m-%d--%H-%M-%S").sql.gz

PATH=$(pwd)/backups/$FILENAME

echo "backuping $FILENAME ..."

/usr/bin/mysqldump -h "$DB_HOST" -P "$DB_PORT" -u "$DB_USERNAME" -p "$DB_PASSWORD" "$DB_DATABASE" | gzip > "$PATH"

echo "backup $FILENAME finished"
