echo "Files in reverse order of size are:"
ls -lS | awk '{if($5 > 10) print $9 "\t" $5 >> "size.txt"}'
cat size.txt
echo "\nCount of files: "
wc -l size.txt | awk '{print $1}'
rm size.txt




