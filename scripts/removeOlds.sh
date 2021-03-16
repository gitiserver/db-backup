#!/bin/bash

if [ -z $COUNT ]; then
  exit;
fi

backups=(./backups/*)
backupsCount=${#backups[@]}

if [ $backupsCount -lt $COUNT ]; then
  exit
fi

i=$((backupsCount-COUNT))

while [ $i -gt 0 ]
do
  echo removing ${backups[$((i-1))]}
  rm -f ${backups[$((i-1))]}
  i=$((i-1))
done