#!/bin/bash

FILENAME=$(date +"%Y-%m-%d--%H-%M-%S").sql.gz

PATH=$(pwd)/backups/$FILENAME

echo "backuping $FILENAME ..."
/usr/bin/pg_dump -h "$DB_HOST" -p "$DB_PORT" -U "$DB_USERNAME" -d "$DB_DATABASE" --file="$PATH" -Fc
echo "backup $FILENAME finished"