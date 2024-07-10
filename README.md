# Number Guessing Game

This project is a simple number guessing game implemented as a Bash script that interacts with a PostgreSQL database to keep track of users and their game statistics.

## Features

- User registration and tracking
- Persistent storage of user statistics including the number of games played and the best game (minimum number of guesses)
- Random number generation for each game session
- Input validation to ensure only integer guesses are accepted

## Requirements

- Bash
- PostgreSQL

## Setup

### Database Setup

1. Make sure you have PostgreSQL installed and running.
2. Create a PostgreSQL user `freecodecamp` (or any other username you prefer) with the ability to create databases and manage them.
3. Create the database `number_guess`:

    ```sh
    createdb number_guess
    ```

4. Create the necessary tables:

    ```sql
    CREATE TABLE users (
      user_id SERIAL PRIMARY KEY,
      username VARCHAR(22) UNIQUE NOT NULL
    );

    CREATE TABLE games (
      game_id SERIAL PRIMARY KEY,
      user_id INT REFERENCES users(user_id),
      guesses INT NOT NULL,
      played_on TIMESTAMP DEFAULT CURRENT_TIMESTAMP
    );
    ```

### Script Setup

1. Make sure you have the script file (`number_guess.sh`) in your desired directory.
2. Make the script executable:

    ```sh
    chmod +x number_guess.sh
    ```

3. Run the script:

    ```sh
    ./number_guess.sh
    ```

## Usage

Upon running the script, you will be prompted to enter your username. If you are a returning user, your game statistics will be displayed. If you are a new user, you will be welcomed and your username will be stored in the database.

The game will then generate a random number between 1 and 1000. You need to guess the number, and the script will provide feedback on whether your guess is too high or too low. The game continues until you guess the correct number.

## Script Breakdown

### Main Functions

- **User Registration and Login**: The script prompts the user to enter a username. If the username exists, it fetches the user's statistics from the database. If the username is new, it adds the user to the database.
- **Game Logic**: The script generates a random number and manages the guessing loop. It provides feedback on each guess and stores the number of guesses in the database upon successful completion of the game.

### Database Operations

- **Users Table**: Stores user information (user_id and username).
- **Games Table**: Stores game information (game_id, user_id, guesses, and played_on timestamp).

## Example

```sh
$ ./number_guess.sh
Enter your username:
john_doe

Welcome back, john_doe! You have played 5 games, and your best game took 3 guesses.

Guess the secret number between 1 and 1000:
Enter your guess: 500
It's lower than that, guess again:
Enter your guess: 250
It's higher than that, guess again:
Enter your guess: 375
You guessed it in 3 tries. The secret number was 375. Nice job!

