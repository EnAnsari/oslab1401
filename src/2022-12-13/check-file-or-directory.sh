#!/bin/bash

count_file=0
count_directory=0
for f in *
do
	if [ -f ./"$f" ]
	then
		echo "this is file: $f"
		((count_file++))
	else
		echo "this is directory: $f"
		((count_directory++))
	fi
done

echo ""
echo "count of files: $count_file"
echo "count of directories: $count_directory"

