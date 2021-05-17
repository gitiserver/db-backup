#!/bin/bash

FILENAME=$(date +"%Y-%m-%d--%H-%M-%S").bak.sql

PATH=$(pwd)/backups/$FILENAME

echo "backuping $FILENAME ..."

/bin/mysqldump -h "$DB_HOST" -P "$DB_PORT" -u "$DB_USERNAME" -p "$DB_PASSWORD" "$DB_DATABASE" > "$PATH"

echo "backup $FILENAME finished"