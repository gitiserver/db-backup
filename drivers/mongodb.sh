#!/bin/bash

FILENAME=$(date +"%Y-%m-%d--%H-%M-%S").bak.gz

PATH=$(pwd)/backups/$FILENAME

echo "backuping $FILENAME ..."
/usr/bin/mongodump -h "$DB_HOST:$DB_PORT"  -d "$DB_DATABASE" -u "$DB_USERNAME" -p "$DB_PASSWORD" --authenticationDatabase="$MDAUTHDB" --archive="$PATH" --gzip

echo "backup $FILENAME finished"