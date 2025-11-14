###############################################################################
# PROBLEM (EASY 7, # 10):

# P - PROBLEM

# Write a method that returns the next to last word in the String passed to it
# as an argument.

# Words are any sequence of non-blank characters.

# You may assume that the input String will always contain at least two words.

# INPUT: string
# OUTPUT: string

# EXPLICIT:
# 1 - Method accepts a string argument
# 2 - Method returns the second to the last word
# 3 - Words are any sequence of non-blank characters
# 4 - Assume that the input is always atleast two words

# IMPLICIT:
# 1 - Return value is a string

# E - EXAMPLE

# Examples:

# penultimate('last word') == 'last'
# penultimate('Launch School is great!') == 'is'

# D - DATA STRUCTURE

# Array - contains the words, iterated over

# A - ALGORITHM

# 1 - Accept string argument
# 2 - Convert the string into an array of words
# 3 - Retrieve the element at index -2
# 4 - Return that element

# C - CODE

def penultimate(str_sequence)
  str_sequence.split[-2]
end

p penultimate('last word') == 'last'
p penultimate('Launch School is great!') == 'is'
