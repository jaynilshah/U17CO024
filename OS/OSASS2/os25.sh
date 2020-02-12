if   [ -d "$1" ]
then echo "$1 is a directory";

elif [ -c "$1" ]
then echo "$1 is a character special file";

elif [ -b "$1" ]
then echo "$1 is a block special file";

elif [ -p "$1" ]
then echo "$1 is a named pipe";

elif [ -S "$1" ]
then echo "$1 is a socket file";

elif [ -h "$1" ]
then echo "$1 is a Symbolic link";

else echo "$1 is not valid";

fi