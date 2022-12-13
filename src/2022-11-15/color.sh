#!/bin/bash
echo -n "Enter (r - y - g): "
read color
case $color in
	'r' | 'R')
		echo "the color is red"
	;;
	'g' | 'G')
		echo "the color is green"
	;;
	'y' | 'Y')
		echo "the color is yellow"
	;;
	*)
		echo "incorrect"
esac
