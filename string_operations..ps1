#!/bin/bash

# Define the sentence
sentence="The quick brown fox jumps over the lazy dog."

# Convert the sentence to uppercase
uppercase_sentence=$(echo "$sentence" | tr '[:lower:]' '[:upper:]')
echo "Uppercase sentence: $uppercase_sentence"

# Count the number of words in the sentence
word_count=$(echo "$sentence" | wc -w)
echo "Number of words in the sentence: $word_count"

# Extract the first word from the sentence
first_word=$(echo "$sentence" | awk '{print $1}')
echo "First word: $first_word"

# Replace all occurrences of a specific word
modified_sentence=$(echo "$sentence" | sed 's/quick/lazy/g')
echo "Modified sentence: $modified_sentence"
