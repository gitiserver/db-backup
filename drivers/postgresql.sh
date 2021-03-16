#!/bin/bash

FILENAME=$(date +"%Y-%m-%d--%H-%M-%S").sql.gz

PATH=$(pwd)/backups/$FILENAME

echo "backuping $FILENAME ..."
/usr/bin/pg_dump -h "$PGHOST" -p "$PGPORT" -U "$PGUSERNAME" -d "$PGDATABASE" --file="$PATH" -Fc
echo "backup $FILENAME finished"