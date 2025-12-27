###############################################################################
# PROBLEM (EASY 9, # 4):
# Write a method that takes a string as an argument, and returns an Array that
# contains every word from the string, to which you have appended a space and
# the word length.

# You may assume that words in the string are separated by exactly one space,
# and that any substring of non-space characters is a word.

# P - PROBLEM
# Given a string argument, method breaks the string into substrings of words. Each substring
# is then transformed into a new substring where in a space and the number of chars are
# included in that substring. Method returns a new array containing each created substring.

# INPUT: string
# OUTPUT: none
# RETURN: array of substrings
# SIDE EFFECTS: none
# -
# EXPLICIT:
# - Method accepts a string argument
# - String argument is separated by spaces to create a word
# - Any non-space chars are words
# - Method returns a new array
# - Return array contains substring elements
# - Substring elements are composed of a substring from argument, a space and number of chars.

# IMPLICIT:

# --
# E - EXAMPLE

# Examples

# word_lengths("cow sheep chicken") == ["cow 3", "sheep 5", "chicken 7"]

# word_lengths("baseball hot dogs and apple pie") ==
#   ["baseball 8", "hot 3", "dogs 4", "and 3", "apple 5", "pie 3"]

# word_lengths("It ain't easy, is it?") == ["It 2", "ain't 5", "easy, 5", "is 2", "it? 3"]

# word_lengths("Supercalifragilisticexpialidocious") ==
#   ["Supercalifragilisticexpialidocious 34"]

# word_lengths("") == []

# --
# D - DATA STRUCTURE/TYPES
# Array - substring elements

# INTERMEDIATE:
# Strings: word substrings, empty string to create each substring element for return array,
#          " " and num string
# Numbers: word length
# Boolean: --
# Range: --
# Array: array of word substrings
# Hash: --

# --
# A - ALGORITHM
# word_lengths("cow sheep chicken") == ["cow 3", "sheep 5", "chicken 7"]

# "cow sheep chicken"
# ["cow", "sheep", "chicken"]
# => ["cow 3", "sheep 5", "chicken 7"]

# HIGH LEVEL:
# Convert the string argument into an array of word substrings. Transform each word in the
# array: create an empty string, append the word, append a " " and append the word
# length. Return the array of transformed substrings.

# STEP BY STEP:
# - Accept string argument, 'str_arg'
# - Convert 'str_arg' into array of word substrings
# - For each 'word' in the array
#   - how_long = ""
#   - Append 'word' to 'how_long'
#   - Append " " to 'how_long'
#   - Retrieve the length of 'word'
#     - convert integer length to a string
#     - append to 'how_long'
# - Return the array of transformed substrings

# --
# C - CODE
def word_lengths(str_arg)
  str_arg.split.map do |word|
    # how_long = ""
    # how_long << word
    # how_long << " "
    # how_long << word.size.to_s
    "#{word} #{word.size}"
  end
end

p word_lengths("cow sheep chicken") == ["cow 3", "sheep 5", "chicken 7"]

p word_lengths("baseball hot dogs and apple pie") ==
  ["baseball 8", "hot 3", "dogs 4", "and 3", "apple 5", "pie 3"]

p word_lengths("It ain't easy, is it?") == ["It 2", "ain't 5", "easy, 5", "is 2", "it? 3"]

p word_lengths("Supercalifragilisticexpialidocious") ==
  ["Supercalifragilisticexpialidocious 34"]

p word_lengths("") == []
