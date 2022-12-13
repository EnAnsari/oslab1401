#!/bin/bash
echo -n "Enter (r - y - g): "
read color
if [ "$color" == 'r' ]
then 
	echo "the color is red"
elif [ "$color" == 'g' ]
then 
       	echo "the color is green"
elif [ "$color" == 'y' ]
then 
	echo "the color is yellow"
else
	echo "incorrect"
fi
