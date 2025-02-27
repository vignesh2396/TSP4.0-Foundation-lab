#!/bin/bash
for i in {1..10}
do
echo "$i"
if [ $i -eq 6 ];
then
break
fi
done


echo "break with while loop"

i=1
while [ $i -lt 10 ]
do
echo "$i"
((i++))
if [ $i -eq 4 ];
then
break
fi
done

echo "Continue with forloop "

for ((i=1;i<=10;i++))
do

if [ $i -eq 3 ];
then
continue
fi
echo "$i"
done
