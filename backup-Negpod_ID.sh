#!/bin/bash

backupdir="negpod_28-ql"
location="backup-Negpod_28.sh"
hostname=$(hostname -s)
archivef="$hostname.tgz"
if [ ! -d "$location" ]; then
	mkdir -p "$location"
fi
echo "backing up $backupdir"
tar czf "$location/$archivef" "$backupdir"
echo "backup complete"
