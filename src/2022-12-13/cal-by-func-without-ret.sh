#!/bin/bash

sum() {
	result=$(( $1 + $2))
	echo "result = $result"
}

sub() {
        result=$(( $1 - $2))
        echo "result = $result"
}

mul() {
        result=$(( $1 * $2))
        echo "result = $result"
}

div() {
        result=$(( $1 / $2))
        echo "result = $result"
}

while true
do
	echo -n "Enter operator(+,-,*,/ | . for Exit): "
	read op
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
	                sum $fnum $snum
	        ;;
	        '-')
	                sub $fnum $snum
	        ;;
	        '*')
	                mul $fnum $snum
	        ;;
	        *)
	                div $fnum $snum
		esac
	;;
	*)
		echo "Error - invalid value"
                continue
        esac
done
echo "Bye Bye!"
