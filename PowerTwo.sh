#Write a program that takes a command-line argument n and prints table of 2

#!/bin/bash
echo "enter the number of n"
read n;
poweroftwo=1
while [ $n -ge 1 ]
do
poweroftwo=$(( 2 * $poweroftwo ))
if [ $poweroftwo -gt 256 ]
then
exit
else
echo "Power of two is to $i  : "$poweroftwo;
fi
done
