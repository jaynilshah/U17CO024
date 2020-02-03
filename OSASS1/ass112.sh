a=$1
b=0
while [ $a -gt 0 ]
do
    temp=`expr $a % 10`
    a=`expr $a / 10`
    b=`expr $b  + $temp`
done
echo $b