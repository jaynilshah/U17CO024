
echo "Please Enter a character.."

  read char
  case $char in
	*[AEIOU]*)
		echo "Its a upper case vowel .."
		;;

	*[aeiou]*)
		echo "Its a lower case vowel .."
		;;
	*[A-Z]*)
		echo "Its a uppercase consonant .."
		;;
	*[a-z]*)
		echo "Its a lower case consonant .."
		;;
	*[0-9]*)
		echo "Its a digit"
		;;
	*)
		echo "Its a special symbol.."
		;;
  esac
echo 
echo "That's all folks!"