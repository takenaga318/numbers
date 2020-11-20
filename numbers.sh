#! /bin/bash
# numbers.sh
# Audrey Takenaga
echo "Enter a positive integer:"
read -r X
N=1

while echo "$X" | grep -E -v "^[1-9][0-9]*$" > /dev/null 2>&1
do
	echo "You must enter a positive integer!"
	read -r X
done

while [ $N -ne $((X + 1)) ]
do
	if [ $((N%2)) -eq 0 ]
	then
		echo "$N even"
	else
		echo "$N odd"
	fi
	N=$((N+1))
done
