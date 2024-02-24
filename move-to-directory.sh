#!/bin/bash

#initialize directory
directory="negpod_28-q1"

#First check directory doesn't exist
if [ ! -d "$directory" ]; then
	#create directory if  it isnot there
	mkdir "$directory"
	echo "Directory created: $directory"
else
	#the directory is there continue with the logic to move files
	echo "Directory arleady exist"
fi

#move files to directory
mv main.sh students-list_1023.txt select-emails.sh student-emails.txt "$directory/"

echo "Files moved successfuly"
