#!/bin/bash

FILENAME=$(date +"%Y-%m-%d--%H-%M-%S").bak.sql

PATH=$(pwd)/backups/$FILENAME

echo "backuping $FILENAME ..."

mysqldump -u "$MDUSERNAME" -p "$MDPASSWORD" > "$PATH"

echo "backup $FILENAME finished"