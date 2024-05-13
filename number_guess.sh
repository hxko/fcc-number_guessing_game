#!/bin/bash


PSQL="psql --username=freecodecamp --dbname=number_guess -t --no-align -c"

# Generate a random number between 1 and 1000
SECRET=$((RANDOM % 1000 + 1))

echo "Enter your username:"

read USERNAME

# Trim username if it exceeds 22 characters
# username="${username:0:22}"
USERNAME="${USERNAME:0:22}"

#get username from db
  USER_ID=$($PSQL "select user_id from users where username = '$USERNAME'")

  #if user present
  if [[ $USER_ID ]]; then
    #get games played
    GAMES_PLAYED=$($PSQL "select COUNT(*) from games where user_id = '$USER_ID'")

    #get best game (guess)
    BEST_GUESS=$($PSQL "select min(guesses) from games where user_id = '$USER_ID'")

    echo -e "\nWelcome back, $USERNAME! You have played $GAMES_PLAYED games, and your best game took $BEST_GUESS guesses."
  else
    #if u_name not present in db
    echo -e "\nWelcome, $USERNAME! It looks like this is your first time here."

    #insert to users table
    INSERTED_TO_USERS=$($PSQL "insert into users(username) values('$USERNAME')")
    #get user_id
    USER_ID=$($PSQL "select user_id from users where username = '$USERNAME'")
    # echo $USER_ID
  fi

# echo "Hello, $username! Let's start the game."

# echo "Welcome to the Number Guessing Game!"
echo "Guess the secret number between 1 and 1000:"

GUESSES=0
while true; do
    ((GUESSES++))
    read -p "Enter your guess: " guess

    # Check if guess is an integer
    if ! [[ "$guess" =~ ^[0-9]+$ ]]; then
        echo "That is not an integer, guess again:"
        continue
    fi

    if [[ $guess -eq $SECRET ]]; then
        echo "You guessed it in $GUESSES tries. The secret number was $SECRET. Nice job!"
         #insert into db
        INSERTED_TO_GAMES=$($PSQL "insert into games(user_id, guesses) values($USER_ID, $GUESSES)")
        exit
    elif [[ $guess -lt $SECRET ]]; then
        echo "It's higher than that, guess again:"
    else
        echo "It's lower than that, guess again:"
    fi
done
