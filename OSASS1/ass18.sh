echo "Please Enter 1/2/3"
    echo "1)Addition"
    echo "2)Subtraction"
    echo "3)Multiplication"
    echo "4)Division"
  
  
  read char
  case $char in
	1)
		echo "`expr $1 + $2`"
		;;

	2)
		echo "`expr $1 - $2`"
		;;
	3)
		echo "`expr $1 \* $2`"
		;;
    4)
		echo "`expr $1 / $2`"
		;;
	*)
		echo "Incorrect option "
		;;
  esac
echo 
echo "That's all folks!"