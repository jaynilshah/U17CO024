for file in "$@";
do
  fileIn=`find . -type f`
  for word in $fileIn; do
  echo `du -sb $word`
  done
done
