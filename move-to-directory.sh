#!/bin/bash
directory="negpod_28-q1"
if [ ! -d "$directory" ]; then
	mkdir "$directory"
	echo "Directory created: $directory"
else
	echo "Directory arleady exist"
fi

#move files to directory
mv main.sh students-list_1023.txt select-emails.sh student-emails.txt "$directory/"

echo "Files moved successfuly"
