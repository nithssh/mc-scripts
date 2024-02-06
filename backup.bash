#!/bin/bash

SERVER_DIR=/home/$(whoami)/minecraft-server
BACKUP_SUBDIR=backup
FILENAME="backup-$(date -Iminutes).zip"

# Move to the server directory
cd $SERVER_DIR
mkdir -p $BACKUP_SUBDIR

# Remove backups older than 24hrs 
rm $(find $BACKUP_SUBDIR -ctime 1)

# Make the backup archive
zip -r $BACKUP_SUBDIR/$FILENAME . --exclude $BACKUP_SUBDIR/\*

