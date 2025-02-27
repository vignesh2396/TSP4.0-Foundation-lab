#!/bin/bash
# factorial of a number using function
factorial() {
  if [ $1 -le 1 ]; then
    echo 1
  else
    prev=$(factorial $(( $1 - 1 )))
    echo $(( $1 * prev ))
  fi
}

echo -n "Enter a number: "
read num
result=$(factorial $num)
echo "Factorial of $num is: $result"