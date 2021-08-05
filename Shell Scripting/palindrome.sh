#!/bin/sh

#Palindrome checker

echo "Enter a String to check"
read string

for i in $(seq 0 ${#string})
do
    rev_string=${string:$i:1}$rev_string
done

echo "Reversed String is \n$rev_string\n"

if [ "$string" = "$rev_string" ]
then
	echo "It is a palindrome"
else
	echo "It is not a palindrome"
fi