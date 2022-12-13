#!/bin/bash
while true
do
	echo -n "Enter operator(+,-,*,/ | . for Exit): "
	read op
	result=0
	case $op in
	'.')
		break
	;;
	'+' | '-' | '*' | '/')
	        echo -n "Enter first number : "
        	read fnum
        	echo -n "Enter second number: "
        	read snum
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
	        *)
	                result=$(( $fnum / $snum))
		esac
	;;
	*)
		echo "Error - invalid value"
                continue
        esac

	echo "result = $result"
done
echo "Bye Bye!"
