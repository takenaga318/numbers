#! /bin/bash
# numbers.sh
# Audrey Takenaga
echo "Enter a positive interger"
read -r NUMBER
while echo "$NUMBER" | grep -E -v "^[1-9][0-9]*$" > /dev/null 2>&1
do
	echo "You must enter a positive integer!"
	read -r NUMBER
done
N=1
while [ "$N" -le "$NUMBER" ]
do 
	if [ "$((N%2))" -eq 0 ]
	then
		echo "$N even"
	else
		echo "$N odd"
	fi
	N=$((N+1))
done
