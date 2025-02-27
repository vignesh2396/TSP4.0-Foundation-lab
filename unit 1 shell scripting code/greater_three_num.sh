#!/bin/bash
# Write a Shell Script to Find the Largest of Three Numbers

echo "Enter three numbers: "
read a b c

if [ $a -ge $b ] && [ $a -ge $c ]; then
  echo "$a is the largest"
elif [ $b -ge $a ] && [ $b -ge $c ]; then
  echo "$b is the largest"
else
  echo "$c is the largest"
fi