echo "Enter the name"
read str
if [ -f $str ]
then
  echo $str is a file
elif [ -d $str ]
then
  echo $str is a directory
else
  echo $str is neither a file nor directory
fi