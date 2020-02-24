if [ -d $1 ]
then
    cd $1
    for file in *
    do
        cd $file
        cnt=`ls -l | wc -l`
       cd '..'
       if [ $cnt -eq 1 ]
       then
            echo $file
            rm -r $file
       fi
    done
fi