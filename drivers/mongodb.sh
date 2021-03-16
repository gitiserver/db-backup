#!/bin/bash

FILENAME=$(date +"%Y-%m-%d--%H-%M-%S").bak.gz

PATH=$(pwd)/backups/$FILENAME

echo "backuping $FILENAME ..."
/usr/bin/mongodump -h "$MDHOST:$MDPORT"  -d "$MDDATABASE" -u "$MDUSERNAME" -p "$MDPASSWORD" --authenticationDatabase="$MDAUTHDB" --archive="$PATH" --gzip

echo "backup $FILENAME finished"