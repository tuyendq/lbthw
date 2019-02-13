#!/usr/bin/env bash

VALID=0
COMPUTER=25

# Ask user to enter a number and check if a number is entered

while [ $VALID -eq 0 ]
do
	read -p "Enter a number between 1 and 50: " NUMBER
	if [ -z $NUMBER ]
	then
		echo "Must enter a number"
		continue
	elif [[ ! $NUMBER =~ ^[0-9]+$ ]]
	then
		echo "Not a number [$NUMBER]"
		continue
	elif [[ ($NUMBER -lt 1) || ($NUMBER -gt 50) ]]
	then
		echo "[$NUMBER] NOT between 1 and 50"
		continue
	fi
	VALID=1
done

# Won or lose
if [ $NUMBER -eq $COMPUTER ]
	then
	echo "You won"
else
	echo "You lose"
fi

exit 0
