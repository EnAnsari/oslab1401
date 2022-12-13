#!/bin/bash

echo -n "Enter first number : "
read fnum
echo -n "Enter second number: "
read snum
echo -n "Enter operator(+,-,*,/): "
read op
result=0

case $op in
	'+')
		result=$(( $fnum + $snum))
	;;
	'-')
                result=$(( $fnum - $snum))
        ;;
        '*')
                result=$(( $fnum * $snum))
        ;;
        '/')
                result=$(( $fnum / $snum))
        ;;
	*)
		echo "Error - invalid value"
		exit
esac

echo "result = $result"
