if [ -d "$1" ]
then
	cd "$1"
	ls -l | grep '^d' | awk '{print $9 >> "subdir.txt"}'
	
	input="subdir.txt"
	while IFS= read -r line
	do
	  	cd "$line"
		cnt=$(ls -l | grep -v '^d' | tail -n+2 | wc -l)
		echo "Number of Files in $line: $cnt" 
		cd ../
		
	done < "$input"
	
	rm subdir.txt

else
	echo "$1 is not a directory !"
fi
