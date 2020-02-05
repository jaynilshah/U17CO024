a=$1
while [ $a -ge 1 ]
do
    echo $2
    a=`expr $a - 1`
done
