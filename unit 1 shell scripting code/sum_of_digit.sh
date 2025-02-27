#!/bin/bash
# Write a Shell Script to Find the Sum of Digits of a Number

echo -n "Enter a number: "
read num
sum=0

while [ $num -gt 0 ]
do
  digit=$((num % 10))
  sum=$((sum + digit))
  num=$((num / 10))
done

echo "Sum of digits: $sum"
