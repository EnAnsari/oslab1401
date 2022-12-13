#!/bin/bash

read -p "Enter salary: " sal
tax=0
case $sal in
	[ -lt 10 ])
		tax=0
	;;
	[ -le 50 ])
		tax=$(($sal * 15 / 100))
	;;
	*)
		tax=$(($sal * 30 / 100))
	;;
esac
echo "tax = $tax"
