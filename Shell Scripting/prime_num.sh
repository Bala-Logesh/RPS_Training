#!/bin/sh

#Prime number checker

echo "Enter a number"
read number

if [ $number -eq 1 ]
then
	echo '\nIt is neither prime nor composite number'
else
	i=2
	flag=0

	while [ $i -le $((number/2)) ]
	do
		if [ $((number%i)) -eq 0 ]
		then
			flag=1
			break
		fi

		i=$((i+1))
	done

	if [ $flag -eq 1 ]
	then
		echo '\nIt is a composite number'
	else
		echo '\nIt is a prime number'
	fi
fi