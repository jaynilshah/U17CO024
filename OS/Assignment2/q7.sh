for file in *
do
	if [ ! -d "$file" ]
	then
 		cnt=`grep -wc $1 "$file"`
		
		if [ $cnt -gt 0 ]
		then 
			echo "'$1' found in $file"
		fi
	fi
done
