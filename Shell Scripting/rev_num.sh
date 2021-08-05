#!/bin/sh

# Reversing a number

echo "Enter a number"
read number

rev_number=0

while [ $number -ge 1 ]
	do
		remainder=$((number%10))
		rev_number=$((rev_number * 10 + remainder))
		number=$((number/10))
	done

echo "Reversed Number is $rev_number"
