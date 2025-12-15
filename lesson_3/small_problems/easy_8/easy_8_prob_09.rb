################################################################################
# PROBLEM (EASY 8, # 9):
# Write a method that takes one argument, a string containing one or more words,
# and returns the given string with words that contain five or more characters
# reversed. Each string will consist of only letters and spaces. Spaces should be
# included only when more than one word is present.

# P - PROBLEM
# Method reverses the letters of all words that are 5 or more characters long in
# a given string argument. Method returns a new string with those words reversed.

# INPUT: string
# OUTPUT: none
# RETURN: string
# SIDE EFFECTS: none
# -
# EXPLICIT:
# - Method accepts a string argument
# - Argument is composed of letters and spaces only
# - Method returns a new string
# - Return value is composed of the string sequence, with any word
#   5 characters of more reversed
# - Spaces should only be included if there is more than one word present

# IMPLICIT:
# - Method is non-mutating

# --
# E - EXAMPLE

# Examples:

# puts reverse_words('Professional')          # => lanoisseforP
# puts reverse_words('Walk around the block') # => Walk dnuora the kcolb
# puts reverse_words('Launch School')         # => hcnuaL loohcS

# --
# D - DATA STRUCTURE/TYPE
# String

# INTERMEDIATE:
# Strings: substrings from string argument
# Numbers: length of substring, 5 or more
# Boolean: if length is 5 or more
# Range: --
# Array: array of substrings
# Hash: --

# --
# A - ALGORITHM
# HIGH LEVEL:
# Create an array of substrings from string argument. Iterate over the array
# and transform the element if element is 5 or more chars in size. For each
# substring element, determine if substring size is 5 or more, if so reverse
# the letters of that string. If not, keep string intact. Convert back the
# array of substrings into a single string. Return string.

# STEP BY STEP:
# --
# - Accept string argument, 'str'
# - Convert 'str' into an array of substrings, 'arr_subs'
# - For 'substr' in 'arr_sub'
#   - Determine if length of 'substr' >= 5
#     - If so, use 'reverse_letter' helper method
#     - If not, keep 'substr'
# - Combine all 'substr' in 'arr_subs' together into a single string
# - Return the string

# 'reverse_letter' helper
# - Convert 'substr' into an array of chars
# - Reverse the arrays order 'chars'
# - Combine all 'chars' into a string, separating " " if needed
# - Return the reversed word

# C - CODE
def reverse_letter(substr)
  substr.chars.reverse.join
end

def reverse_words(str)
  str.split.map do |substr|
    substr.size >= 5 ? reverse_letter(substr) : substr
  end.join(" ")
end

# p reverse_letter("words")
puts reverse_words('Professional')          # => lanoisseforP
puts reverse_words('Walk around the block') # => Walk dnuora the kcolb
puts reverse_words('Launch School')         # => hcnuaL loohcS
