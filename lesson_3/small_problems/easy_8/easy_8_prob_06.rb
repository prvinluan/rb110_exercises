################################################################################
# PROBLEM (EASY 8, # 6):
# Write a method that takes a string, and returns a new string in which every
# character is doubled.

# P - PROBLEM
# Method doubles every character in a given string

# INPUT: string
# OUTPUT: none
# RETURN: a new string
# SIDE EFFECTS: none
# -
# EXPLICIT:
# - Method accepts a string argument
# - Method takes each character in the string and doubles it
# - Method returns a new string
# - All chars are considered including spaces and non-alpha numeric
# - If argument is an empty string, return ""

# IMPLICIT:

# --
# E - EXAMPLE

# Examples:

# repeater('Hello') == "HHeelllloo"
# repeater("Good job!") == "GGoooodd  jjoobb!!"
# repeater('') == ''

# --
# D - DATA STRUCTURE
# String

# INTERMEDIATE:
# Strings: empty string to build the new string
# Numbers: length to multiply each char, 2 in this case
# Boolean: determine if argument is empty
# Range: --
# Array: array of chars
# Hash: --
# --
# A - ALGORITHM
# HIGH LEVEL:
# Return "" if argument is an empty string. If not, convert string argument
# into an array of chars. Create an empty string to append each new string
# section of doubled chars. For each char in array of chars, double the chars
# and append to new string. Return the new string.

# STEP BY STEP:
# - Accept string argument, 'str'
# - Determine if 'str' == ''
#   - If so, ''
# - Convert 'str' into an array of chars, 'arr_chars'
# - double = ''
# - For each 'char' in 'arr_chars'
#   - Double 'char'
#   - Append to 'double'
# - Return 'double'

# HIGH LEVEL:
# Return "" if argument is empty. If not, convert string argument into an
# array of chars. Transform each element in the created array. For each
# element, double the char. Convert the array of sub-strings into an string
# return the string.

# STEP BY STEP:
# - Accept string argument, 'str'
# - Determine if 'str' == ''
#   - If so, return ''
# - Convert 'str' into an array of chars, 'arr_chars'
# - Tranform each 'char' in 'arr_chars'
#   - Double each 'char' into a new sub-string
# - Convert the array of substrings into a string
# - Return that string

# --
# C - CODE

def repeater(str)
  return '' if str.empty?

  arr_chars = str.chars
  double = ''
  arr_chars.each do |char|
    double << char * 2
  end

  double
end

def repeater(str)
  return '' if str.empty?

  str.chars.map do |chars|
    chars * 2
  end.join

end

p repeater('Hello') == "HHeelllloo"
p repeater("Good job!") == "GGoooodd  jjoobb!!"
p repeater('') == ''
