#!/bin/bash

create_file() {
	read -p "Enter address: " address
	read -p "Enter name of file: " name
	cd $address
	touch $name
}

find_file() {
        read -p "Enter address: " address
        read -p "Enter name of file: " name
        cd $address
        find $name
}

list_in_path() {
	read -p "Enter address: " address
	cd $address
	for f in *
	do
		if [ -f $f ]
		then
			echo "$f is an ordinary file"
		elif [ -d $f ]
		then
			echo "$f is a folder"
		fi
	done
}

print_max() {
	for((i=0;i<5;i++))
	do
		read -p "Enter value number $((i+1)): " arr[i]
	done
	max=${arr[0]}
	index=0
	for((i=1;i<5;i++))
	do
		if [ $max -lt ${arr[i]} ]
		then
			max=${arr[i]}
			index=$i
		fi
	done
	echo "Maximum value is = $max"
	echo "in value number $((index+1))"
}

print_simple() {
	read -p "Enter n: " n
	for((i=2;i<=n;i++))
	do
		prime=1
		for((j=2;j<i;j++))
		do
			if [ $((i%j)) -eq 0 ]
			then
				prime=0
			fi
		done
		if [ $prime -eq 1 ]
		then
			echo -n "$i "
		fi
	done
	echo ""
}

select choice in "create file" "find file and folder" "list file and folder in path" "print max in array" "print simple number" "exit"
do
	case $choice in
		"create file")
			create_file
		;;
		"find file and folder")
			find_file
		;;
		"list file and folder in path")
			list_in_path
		;;
		"print max in array")
			print_max
		;;
		"print simple number")
			print_simple
		;;
		"exit")
			break
		;;
		*)
			echo "Error - invalid input - Try again!"
		;;

	esac
done
