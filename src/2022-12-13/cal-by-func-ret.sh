#!/bin/bash

sum() {
	return $(( $1 + $2))
}

sub() {
        return $(( $1 - $2))
}

mul() {
        return $(( $1 * $2))
}

div() {
        return $(( $1 / $2))
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
		ret=$?
		echo "result = $ret"
	;;
	*)
		echo "Error - invalid value"
                continue
        esac
done
echo "Bye Bye!"
