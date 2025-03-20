#!/bin/bash

PSQL="psql --username=freecodecamp --dbname=number_guess -t --no-align -c"

echo "Enter your username:"
read USERNAME

# Check if user exists
USER_EXISTS=$($PSQL "SELECT username FROM user_data WHERE username='$USERNAME'")

if [[ -z $USER_EXISTS ]]
then
  # New user
  echo "Welcome, $USERNAME! It looks like this is your first time here."
  INSERT_NEW_USER=$($PSQL "INSERT INTO user_data(username, games_played, best_game) VALUES('$USERNAME', 0, 0)")
else
  # Get user stats
  GAMES_PLAYED=$($PSQL "SELECT games_played FROM user_data WHERE username='$USERNAME'")
  BEST_GAME=$($PSQL "SELECT best_game FROM user_data WHERE username='$USERNAME'")
  
  # Display welcome back message with exact format
  echo "Welcome back, $USERNAME! You have played $GAMES_PLAYED games, and your best game took $BEST_GAME guesses."
fi

# Generate secret number
SECRET_NUMBER=$(( RANDOM % 1000 + 1 ))
NUMBER_OF_GUESSES=0

echo "Guess the secret number between 1 and 1000:"

# Loop until correct guess
while true
do
  read GUESS
  
  # Check if input is an integer
  if [[ ! $GUESS =~ ^[0-9]+$ ]]
  then
    echo "That is not an integer, guess again:"
    continue
  fi
  
  # Increment guess counter
  ((NUMBER_OF_GUESSES++))
  
  # Check guess against secret number
  if [[ $GUESS -eq $SECRET_NUMBER ]]
  then
    # User guessed correctly - break out of loop
    break
  elif [[ $GUESS -gt $SECRET_NUMBER ]]
  then
    echo "It's lower than that, guess again:"
  else
    echo "It's higher than that, guess again:"
  fi
done

# Display success message with exact format required by the test
echo "You guessed it in $NUMBER_OF_GUESSES tries. The secret number was $SECRET_NUMBER. Nice job!"

# Update user stats
UPDATE_USER-STATS=$($PSQL "UPDATE user_data SET games_played = games_played + 1 WHERE username='$USERNAME'")

# Update best game if necessary
if [[ $BEST_GAME -eq 0 || $NUMBER_OF_GUESSES -lt $BEST_GAME ]]
then
  UPDATE_STATS=$($PSQL "UPDATE user_data SET best_game = $NUMBER_OF_GUESSES WHERE username='$USERNAME'")
fi
