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
		   read -p " Enter Student ID: " studentId
		   if grep -q ",$studentId$" "$student_file"; then
			   echo "student ID already exists"
		   else

		   read -p " Enter your Email: " email
		   if [[ $email =~ ^[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,}$ ]]; then
		   read -p " Enter Your Age: " age
		   
			   echo "$email,$age,$studentId" >> "$student_file"
			   echo "student registered successifully!"
		   else
			   echo "invalid email"
		   fi
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
              ;;

           5)     
		  echo "exist"
		  exit 0
             ;;


     esac
done
