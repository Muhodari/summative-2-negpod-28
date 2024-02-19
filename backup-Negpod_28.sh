
#!/bin/bash
# initiate remote server
host="64293e56bc62.3a2627c1.alu-cod.online"
username="64293e56bc62"
password="328d3b338a4ced526c9a"
remote_directory="/summative/1023-2024j/"

#source Directory and backup directory
source_dir="negpod_28-q1"
# initiate
backup_dir="backup-negpod_28-q1"
# create backup folder
mkdir "$backup_dir"
#copy content to the backup folder
cp -r "$source_dir" "$backup_dir"

# Perform backup using rsync
rsync -avz --progress -e "sshpass -p $password ssh -o StrictHostKeyChecking=no" "$backup_dir" "$username@$host:$remote_directory"

# Check if backup is successful
if sshpass -p "$password" ssh -o StrictHostKeyChecking=no "$username@$host" "[ -d \"$remote_directory/$backup_dir\" ]"; then
    echo "Backup completed successfully."
else
    echo "Error: Backup failed."
fi