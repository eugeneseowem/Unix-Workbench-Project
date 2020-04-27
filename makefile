all: README.md

README.md:
	echo "# Unix Workbench Project" > README.md
	echo "\nThis is a project for the [course](https://www.coursera.org/learn/unix)." >> README.md
	echo "\n**Description**:" >> README.md
	echo "The program will ask the user to make a guess of the number of files in the current directory until the correct answer is arrived at. The user will be prompted if the answer is too high or too low. The program can be executed by entering bash guessinggame.sh on the command line.The program contains at least one function, one loop and one if statement. The program also should have more than 20 lines of code but less than 50 lines of code." >> README.md
	echo "\n**Makefile**:" >> README.md
	echo "\nMakefile will produce the README.md file and it contains the following" >> README.md
	echo "1. Title of project" >> README.md
	echo "2. Date and time at which make was run" >> README.md
	echo "3. Number of lines of code" >> README.md
	echo -n "\n**Date and time at which make was run**: " >> README.md
	date +%d\ %b\ %Y\ %H:%M >> README.md
	echo -n "\n**Number of lines of code**: " >> README.md
	wc -l guessinggame.sh | egrep -o "[0-9]+" >> README.md

clean:
	rm README.md
