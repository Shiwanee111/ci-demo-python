#!/bin/bash

# Ask user for input file
read -p "Enter the text file name: " FILE

# Check if file exists
if [ ! -f "$FILE" ]; then
  echo "File does not exist!"
  exit 1
fi

# Count lines, words, characters
LINES=$(wc -l < "$FILE")
WORDS=$(wc -w < "$FILE")
CHARS=$(wc -c < "$FILE")

# Find longest word
LONGEST_WORD=$(tr -s ' ' '\n' < "$FILE" | tr -d '[:punct:]' | awk '{ if (length > max) { max = length; word = $0 } } END { print word }')

# Display results
echo "---------------------------"
echo "File: $FILE"
echo "Number of lines      : $LINES"
echo "Number of words      : $WORDS"
echo "Number of characters : $CHARS"
echo "Longest word         : $LONGEST_WORD"
echo "---------------------------"
