#!/bin/sh

#Palindrome checker

echo "Enter a number"
read number
old_num=$number

rev_number=0

while [ $number -ge 1 ]
	do
		remainder=$((number%10))
		rev_number=$((rev_number * 10 + remainder))
		number=$((number/10))
	done

echo "Reversed Number is \n$rev_number\n"

if [ $old_num == $rev_number ]
then
	echo "It is a palindrome"
else
	echo "It is not a palindrome"
fi