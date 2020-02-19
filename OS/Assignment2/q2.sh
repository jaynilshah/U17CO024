cnt="$2"

while [ $cnt -gt 0 ] 
do 
	echo "$1"
	cnt=`expr $cnt - 1`
done
