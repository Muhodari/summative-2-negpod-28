# student registration management system
# student list file
student_file="Students-list_1023.txt"

while true; do 
    echo "****************************************************"
    echo "* Welcome to ALU Registration System               *"
    echo "****************************************************"
    echo "1. Register student                                *"
    echo "2. View all students                               *"
    echo "3. delete student                                  *"
    echo "4. Update Student                                  *"
    echo "5. Exit                                            *"

    read -p " Enter choice(1-5): " choice 

    case $choice in 
	   1)
		    echo "register student"

		   read -p " Enter your Email: " email
		   if [[ $email =~ ^[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,}$ ]]; then
		   read -p " Enter Your Age: " age 
		   read -p " Enter Student ID: " studentId
			   echo "$email,$age,$studentId" >> "$student_file"
			   echo "student registered successifully!"
		   else
			   echo "invalid email"
		   fi

	      ;;
           2)

	          echo "view all student"

	      ;;	

	   3)  
	          echo "delete student" 
              ;;

	   4)  
	          echo "update student"
                  read -p "Enter student's Id: " studentId
                  if grep -q "$studentId" "$student_file"; then
        
                 read -p "Enter new student email: " new_email
                 read -p "Enter new Age: " new_age
        
                 sed -i "/^$studentId/s/,[0-9]*,[0-9]*$/,,$new_email,$new_age/" "$student_file"
                 echo "Student credentials updated successfully!"
                 else
                 echo "Student not found with this Id: $studentId"
             
                fi	
              ;;

           5)     
		  echo "exist"
		  exit 0
             ;;


     esac
done 
