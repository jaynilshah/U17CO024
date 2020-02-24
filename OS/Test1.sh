
cnt=`grep -wc $1 dict.txt`
    if [ $cnt -gt 0 ]
    then
    echo "Correctly spelled"
    else
    echo "incorrectly spelled" 
    fi

    