cnt=0
if [ -d "$1" ]
then
	cd $1
	for file in *
	do
		if [ -d $file ]
		then
			cd $file
			for i in *
			do
				ex=$(ls -l | grep -v '^d' | grep '.exe' | wc -l)
				cnt=`expr $cnt + $ex`
			done
			cd '..'
		fi
	done
	cd '..'
	echo $cnt	
else
	echo "$1 is not a directory !"
fi