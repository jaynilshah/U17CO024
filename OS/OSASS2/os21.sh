ll=$(last -1 -R  $USER | head -1 | cut -c 34-35)
  
if  [  $ll -ge 6  ] && [ $ll -le 12 ] 
then
  echo "Good Morning" 
elif [  $ll -ge 12  ] && [ $ll -le 18 ]
then
  echo "Good Afternoon"
else
  echo "Good Evening"
fi