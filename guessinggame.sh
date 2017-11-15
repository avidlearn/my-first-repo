## File: guessinggame.sh

# Determine number of files within current directory and assign it to a variable by the name of number_to_be_guessed.

function congrats { 
	echo "Congratulations!!! You guessed correctly and this program shall end now - goodbye!"
}

number_to_be_guessed=$(ls | wc -l)

index=0     # Set index to zero for counting number of user attempts.

while [[ $index -gt -1 ]]       # Start loop.

do 

  echo "Please enter a positive integer as a guess of how many files there are in the current directory."   # Request for user input.

  read INPUT                                                                                                # Register input entry made by user.

  let index=$index+1                                                                                        # Increase index count by 1 after each guess entry attempt by the user.

  if [[ $INPUT -lt $number_to_be_guessed ]]

     then 
        echo "You have made "$index" attempt(s) at guessing the number of files in the current directory."
        echo "Your guess is incorrect and is too low, please try again."
        
 
  elif [[ $INPUT -gt $number_to_be_guessed ]]
      
     then 
        echo "You have made "$index" attempt(s) at guessing the number of files in the current directory."
        echo "Your guess is incorrect and is too high, please try again."
fi
        
  if [[ $INPUT -eq $number_to_be_guessed ]]
     then
	echo "You have made "$index" attempt(s)."
	congrats
     exit
  fi

done
