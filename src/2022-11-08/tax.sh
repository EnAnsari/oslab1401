#!/bin/bash
read -p "Enter salary: " sal
tax=0

if [ $sal -lt 10 ]
then 
	tax=0
elif [ $sal -le 50 ]
then
	tax=$(($sal * 15 / 100))
else
	tax=$(($sal * 30 / 100))
fi
echo "tax = $tax"
