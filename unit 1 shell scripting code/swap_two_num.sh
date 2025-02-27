#!/bin/bash
# Write a Shell Script to Swap Two Numbers
echo "Enter two numbers: "
read a b

echo "Before swapping: a=$a, b=$b"

a=$((a + b))
b=$((a - b))
a=$((a - b))

echo "After swapping: a=$a, b=$b"
