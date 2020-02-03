
echo "Please Enter 1/2/3"
    echo "1)Number of users logged in the system"
    echo "2)Calendar for current year"
    echo "3)Date"
  
  
  read char
  case $char in
	1)
		echo "`users | wc -w`"
		;;

	2)
		echo "`cal`"
		;;
	3)
		echo "`date`"
		;;
	*)
		echo "Incorrect option "
		;;
  esac
echo 
echo "That's all folks!"