
a=1
b=1
while [ $b -le $1 ]
do
   a=`expr $a \* $b`
   b=`expr $b + 1`
done

echo $a