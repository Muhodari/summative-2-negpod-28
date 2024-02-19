#!/usr/bin/env bash
#initiate remote server
remote_server="64293e56bc62.3a2627c1.alu-cod.online"
remote_dir="/summative/1023-2024j/"
#source Directory
source_dir="negpod_28-q1"
#backup Directory
backup_dir="backup-negpod_28-q1"
#create backup directory
mkdir "$backup_dir"
#copy content to the backup folder
cp -r "$source_dir" "$backup_dir"
#send data to remove server
scp -r "$backup_dir" "$remote_server:$remote_dir"
#Remove the backup from our sandbox
rm -r "$backup_dir"

echo "The directory has been backed up"