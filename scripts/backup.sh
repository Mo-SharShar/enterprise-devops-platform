#!/bin/bash

SOURCE=$HOME/devops-platform
BACKUP_DIR=$HOME/backups

mkdir -p $BACKUP_DIR

tar -czf $BACKUP_DIR/project-backup.tar.gz $SOURCE

echo "Backup completed successfully"
