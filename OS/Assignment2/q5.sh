if [ -d "$1" ]
then
	echo "$1 is a directory !"

elif [ -c "$1" ] 
then
	echo "$1 is a character special file !"

elif [ -b "$1" ] 
then
	echo "$1 is a block special file !"

elif [ -p "$1" ] 
then
	echo "$1 is a named pipe !"

elif [ -S "$1" ] 
then
	echo "$1 is a socket file !"

elif [ -h "$1" ] 
then
	echo "$1 is a symbolic link !"

elif [ -f "$1" ] 
then
	echo "$1 is a regular file !"

elif [ -e "$1" ] 
then
	echo "$1 is of unknown type !"

else
	echo "$1 is invalid file !"
fi
