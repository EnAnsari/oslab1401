#!/bin/bash
# Check if a number is prime

# function to return whether prime or not
check_prime() {
    current_number=$1
    flag=0
    i=2

    while test $i -le `expr $current_number / 2`
    do
        if test `expr $current_number % $i` -eq 0
        then
            flag=1
        fi
        i=`expr $i + 1`
    done

    if test $flag -eq 0
        then echo $current_number
    fi
}

# Assign From and to number
from_number=$1
to_number=$2

for (( number=$from_number; number<=$to_number; number++ ))
do
    check_prime $number
done
