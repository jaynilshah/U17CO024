cnt=0
if [ -d "$1" ]
then
	cd $1
	for file in *
	do
		if [ -d $file ]
		then
			cd $file
			# echo $file
			ex=$(ls -l | grep -v '^d' | grep '.exe' | wc -l)
				cnt=`expr $cnt + $ex`
				# echo $ex
			cd '..'
		fi
	done
	cd '..'
	echo $cnt	
else
	echo "$1 is not a directory !"
fi