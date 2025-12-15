################################################################################
# PROBLEM (EASY 8, # 7):
# Write a method that takes a string, and returns a new string in which every
# consonant character is doubled. Vowels (a,e,i,o,u), digits, punctuation, and
# whitespace should not be doubled.

# P - PROBLEM
# Method doubles very letter in a given string unless it is a vowel, number,
# punctuation or whitespace.

# INPUT: string
# OUTPUT: none
# RETURN: string
# SIDE EFFECTS: none
# -
# EXPLICIT:
# - Method accepts a string argument
# - Method doubles the char in the string unless char is:
#   - vowel
#   - number
#   - punctuation
#   - " "
# - Method returns the new created string
# - Return "" if string is emtpy

# IMPLICIT:

# --
# E - EXAMPLE

# Examples:

# double_consonants('String') == "SSttrrinngg"
# double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
# double_consonants("July 4th") == "JJullyy 4tthh"
# double_consonants('') == ""

# --
# D - DATA STRUCTURE/TYPE
# String

# INTERMEDIATE:
# Strings: string to append each substring, substring chars, consonant substring
# Numbers: length of substring, 2
# Boolean: determine if char is a consonant
# Range: --
# Array: array of chars
# Hash: --

# --
# A - ALGORITHM
# HIGH LEVEL:
# Convert string argument into an array of chars. Create consonant variable composed
# of all consonant string letters. Transform the elements of the array if it is any of
# the chars in consonant variable. If so, double the char. If not char remains unchanged.
# Convert the array of transformed chars into a single string. Return the new string.

# STEP BY STEP:
# - Accept the string argument, 'str'
# - Convert 'str' in an array of chars
# - CONSONANTS = "bcdfghjklmnpqrstvwxyz"
# - For each 'char' in array of chars
#   - Determine if downcase 'char' is present in 'CONSONANTS'
#   - If so, double 'char'
#   - If no, 'char'
# - Convert the array of transformed elements into a string
# - Return string

# --
# C - CODE
CONSONANTS = "bcdfghjklmnpqrstvwxyz"

def double_consonants(str)
  str.chars.map do |char|
    CONSONANTS.include?(char.downcase) ? char * 2 : char
  end.join
end

p double_consonants('String') == "SSttrrinngg"
p double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
p double_consonants("July 4th") == "JJullyy 4tthh"
p double_consonants('') == ""
