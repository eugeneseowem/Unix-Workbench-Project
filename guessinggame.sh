#!/usr/bin/env bash
# Filename: guessinggame.sh

# This program asks the user to guess the number of files in the current directory.
# The program will prompt the user if the number is too high or low.
# The game will end when the guess is correct



numfiles=$(ls -A | wc -l)


function guess {

	echo "Guess the number of files in my current directory?"
	read input

	while  [[ -z $input ]] || [[ $input =~ [^0-9]+ ]]
	do
		echo "Your input was invalid. Pick a number greater than or equals to zero"
		read input
	done
}

guess

[[ $input -ne $numfiles ]] || [[ $input =~ [^0-9]+ ]]

while [[ $input -ne $numfiles ]] || [[ $input =~ [^0-9]+ ]]
do
	if  [[ $input -gt $numfiles ]] && [[ $input =~ ^[0-9]+ ]]
	then
		echo "That is not right. Please try a lower number"

	elif [[ $input -lt $numfiles ]] && [[ $input =~ ^[0-9]+ ]]
	then
		echo "That is not right. Please try a higher number"
	else
		echo "Your input was invalid. Enter a number greater than or equals to 0."

	fi
	read input

done

echo "That is correct. Well done!"

