
#!/bin/bash
# initiate remote server

host="64293e56bc62.3a2627c1.alu-cod.online"
username="64293e56bc62"
password="328d3b338a4ced526c9a"
remote_directory="/summative/1023-2024j/"

#source Directory and backup directory
source_dir="negpod_28-q1"

# initiate folder backup  name
backup_dir="backup-negpod_28-q1"


#copy content to the backup folder
cp -r "$source_dir" "$backup_dir"

# send data to the remote server
rsync -avz --progress -e "sshpass -p $password ssh -o StrictHostKeyChecking=no" "$backup_dir" "$username@$host:$remote_directory"

#  look if the data were synced
if sshpass -p "$password" ssh -o StrictHostKeyChecking=no "$username@$host" "[ -d \"$remote_directory/$backup_dir\" ]"; then
   	echo "back up process successfully completed."
 else
	 echo " Error occured while backup proceess under going"
fi
