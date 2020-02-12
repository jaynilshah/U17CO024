
for i in * 
do
	size=$(stat -c %s "$i")
	if [[ $size -gt 10 ]]
	then
		echo "$i $size">>ab.txt
	fi
done
echo SORTED DATA
sort -k 2nr ab.txt
wc -l ab.txt
rm ab.txt
