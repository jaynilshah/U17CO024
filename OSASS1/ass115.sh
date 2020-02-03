a=$1
if [ `expr $a % 2` -eq 1 ]
then
    a=`expr $a + 1`
fi

while [ $a -le $2 ]
do
   echo $a
   a=`expr $a + 2`
done
