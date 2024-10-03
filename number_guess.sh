#!/bin/bash
PSQL="psql --username=freecodecamp --dbname=number_guess -t --no-align -c"

echo "Enter your username:"
read USERNAME

#generate random number
NUMBER=$(($RANDOM%1000))

#guessing function
GUESS_NUMBER () {

  while [[ ! $GUESS =~ ^[0-9]+$ ]]
  do
  echo "That is not an integer, guess again:"
  read GUESS
  done

  NUMBER_OF_GUESSES=0
  while [[ $GUESS -ne $NUMBER ]]
  do

  if [[ $NUMBER -lt $GUESS ]] 
  then
  NUMBER_OF_GUESSES=$(($NUMBER_OF_GUESSES+1))
  echo "It's lower than that, guess again:"
  read GUESS
  else [[ $NUMBER -gt $GUESS ]]
  NUMBER_OF_GUESSES=$(($NUMBER_OF_GUESSES+1))
  echo "It's higher than that, guess again:"
  read GUESS
  fi
  done

  #number guessed
  NUMBER_OF_GUESSES=$(($NUMBER_OF_GUESSES+1))
  echo "You guessed it in $NUMBER_OF_GUESSES tries. The secret number was $NUMBER. Nice job!"

}

#check if username in database
USERNAME_RESULT=$($PSQL "SELECT username FROM players WHERE username = '$USERNAME'")

#if user found
if [[ ! -z $USERNAME_RESULT ]]
then
GAMES_PLAYED=$($PSQL "SELECT games_played FROM players WHERE username = '$USERNAME_RESULT'")
BEST_GAME=$($PSQL "SELECT best_game FROM players WHERE username = '$USERNAME_RESULT'")

echo "Welcome back, $USERNAME_RESULT! You have played $GAMES_PLAYED games, and your best game took $BEST_GAME guesses."
echo "Guess the secret number between 1 and 1000:"
read GUESS

#guess the number
GUESS_NUMBER

#update user
GAMES_PLAYED=$(($GAMES_PLAYED+1))
USER_UPDATE=$($PSQL "UPDATE players SET games_played = $GAMES_PLAYED WHERE username = '$USERNAME'")

if (( $NUMBER_OF_GUESSES < $BEST_GAME ))
then
BEST_GAME=$NUMBER_OF_GUESSES
USER_UPDATE=$($PSQL "UPDATE players SET best_game = $BEST_GAME WHERE username = '$USERNAME'")
fi
fi

#if user not found
if [[ -z $USERNAME_RESULT ]]
then

echo -e "\nWelcome, $USERNAME! It looks like this is your first time here."
echo "Guess the secret number between 1 and 1000:"
read GUESS

#guess the number
GUESS_NUMBER

#insert user into database
GAMES_PLAYED=1
BEST_GAME=$NUMBER_OF_GUESSES

USER_INSERT=$($PSQL "INSERT INTO players(username, games_played, best_game) VALUES ('$USERNAME', $GAMES_PLAYED, $BEST_GAME)")
fi


