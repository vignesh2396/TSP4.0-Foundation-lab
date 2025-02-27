#!/bin/bash
# Write a Shell Script to Print the Fibonacci Series

echo -n "Enter the number of terms: "
read n

a=0
b=1

echo "Fibonacci Series: "
for ((i=0; i<n; i++))
do
  echo -n "$a "
  temp=$((a + b))
  a=$b
  b=$temp
done
echo ""
