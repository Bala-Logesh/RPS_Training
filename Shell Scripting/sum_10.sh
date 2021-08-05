#!/bin/sh

# Sum of 10 numbers

numbers="1 2 3 4 5 6 7 8 9 10"

total=0

for num in $numbers
	do
		total=$((total + num))
	done

echo "Total of 10 number is $total"