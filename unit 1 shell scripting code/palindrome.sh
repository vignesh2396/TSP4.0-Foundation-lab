#!/bin/bash
# Write a Shell Script to Check if a String is a Palindrome

echo -n "Enter a string: "
read str

rev=$(echo "$str" | rev)

if [ "$str" == "$rev" ]; then
  echo "$str is a palindrome"
else
  echo "$str is not a palindrome"
fi
