#!/usr/bin/env bash
# Filename: guessinggame.sh

# This program ask the user to guess the number of files in the current directory.
# The program will prompt the user if the number is too high or low.
# The game will end when the guess is correct



numfiles=$(find . -maxdepth 1 -type f | wc -l)


function guess {
	echo "Guess the number of files in my current directory?"
	read input
}

guess

while [[ $input -ne $numfiles ]]
do
	if [[ $input -gt $numfiles ]]
	then
		echo "That is not right. Please try a lower number"

	else [[ $input  -lt $numfiles ]]

		echo "That is not right. Please try a higher number"
	fi

	read input
done

echo "That is correct. Well done!"
