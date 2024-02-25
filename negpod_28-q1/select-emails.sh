#!/bin/bash

#sorting emails
studentlist="students-list_1023.txt"
sortedemail="student-emails.txt"
if [ -e "$studentlist" ] && [ -s "$studentlist" ]; then
	cut -d ',' -f 1 "$studentlist" > "$sortedemail"
else
	echo "file does not exist or is empty"
fi
echo "email sorted successfully"
