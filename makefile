# The makefile should produce the README.md which should contain the following information:
# The title of the project.
# The date and time at which make was run.
# The number of lines of code contained in guessinggame.sh


README.md: guessinggame.sh
	echo "# The title of this project is "Bash, Make, Git and GitHub"." > README.md
	echo "## The number of lines of code contained in guessinggame.sh:" >> README.md
	wc -l guessinggame.sh | egrep -o "[0-50]+" >> README.md

