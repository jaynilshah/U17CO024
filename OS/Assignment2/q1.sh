hr=`who | cut -c 34-35`
user=`whoami`

if [ $hr -ge 7 ] && [ $hr -lt 12 ]
then
	echo "Good Morning, $user !"

elif [ $hr -ge 12 ] && [ $hr -lt 17 ]
then
	echo "Good Afternoon, $user !"

else
	echo "Good Evening, $user !"
fi
