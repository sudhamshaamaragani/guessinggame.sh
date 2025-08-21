#!/bin/bash

# Function to count number of files
function get_file_count {
  echo $(ls -1 | wc -l)
}

file_count=$(get_file_count)
guess=-1

echo "Welcome to the Guessing Game!"
echo "Can you guess how many files are in the current directory?"

while [[ $guess -ne $file_count ]]
do
  read -p "Enter your guess: " guess

  if [[ $guess -lt $file_count ]]; then
    echo "Too low!"
  elif [[ $guess -gt $file_count ]]; then
    echo "Too high!"
  else
    echo "Congratulations! You guessed right!"
  fi
done

