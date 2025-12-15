################################################################################
# PROBLEM (EASY 8, # 2):
# Write a method that returns a list of all substrings of a string that start at
# the beginning of the original string. The return value should be arranged in
# order from shortest to longest substring.

# Examples:

# leading_substrings('abc') == ['a', 'ab', 'abc']
# leading_substrings('a') == ['a']
# leading_substrings('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']

# P - PROBLEM
# Method takes a string argument and returns a new array where each element
# is a substring from argument. Beginning with the first char, each substring
# element is built by appending each character to a new empty string.
# Return array should be sorted in increasing length.

# INPUT: string
# OUTPUT: none
# RETURN: array of strings
# SIDE EFFECTS: none
# -
# EXPLICIT:
# - Method accepts a string argument
# - Method returns a new array with substrings as elements
# - Return array length == argument length

# IMPLICIT:
# --
# E - EXAMPLE

# Examples:

# leading_substrings('abc') == ['a', 'ab', 'abc']
# leading_substrings('a') == ['a']
# leading_substrings('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']

# 'abc'
# ['a']
# ['a', 'ab']
# => ['a', 'ab', 'abc']

# --
# D - DATA STRUCTURE/TYPES
# Array - return value, array with substrings as elements

# INTERMEDIATE:
# Strings: string to accumulate each char from argument
# Numbers: argument length, return array length, char index
# Boolean: argument length == return array length
# Range: index - (length - 1)
# Array: --
# Hash: --
# --
# A - ALGORITHM
# HIGH LEVEL:
# Build a new array containing substrings. Create each substring
# by appending each letter starting at index 0 and placing the
# substring in a new array. Return array with substrings.

# STEP BY STEP:
# - Accept string argument, 'str'
# - arr_substr = []
# - substr = ""
# - For each char 'letter' in 'str'
#   - Append to 'substr'
#   - Append 'substr' to 'arr_substr'
# - Return 'arr_substr'

# --
# C - CODE

def leading_substrings(str)
  arr_substr = []
  substr = ""

  str.each_char do |letter|
    substr += letter
    arr_substr << substr
  end

  arr_substr
end

def leading_substrings(str)
  arr_substr = []
  substr = ""
  idx = 0
  
  loop do
    substr += str[idx, 1]
    arr_substr << substr
    break if arr_substr.length == str.length
    idx += 1
  end

  arr_substr
end

p leading_substrings('abc') == ['a', 'ab', 'abc']
p leading_substrings('a') == ['a']
p leading_substrings('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']
