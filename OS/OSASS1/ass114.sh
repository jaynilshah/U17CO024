a=1
curr=1
prev=0
temp=0
while [ $a -le 10 ]
do
    echo $curr
    temp=$prev
    prev=$curr
    curr=`expr $curr + $temp`
    a=`expr $a + 1`
done
