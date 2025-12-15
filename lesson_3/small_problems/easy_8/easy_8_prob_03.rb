################################################################################
# PROBLEM (EASY 8, # 3):
# Write a method that returns a list of all substrings of a string. The returned
# list should be ordered by where in the string the substring begins. This means
# that all substrings that start at position 0 should come first, then all
# substrings that start at position 1, and so on. Since multiple substrings will
# occur at each position, the substrings at a given position should be returned
# in order from shortest to longest.

# You may (and should) use the leading_substrings method you wrote in the
# previous exercise:

# P - PROBLEM
# Method takes a string argument and creates a list of subsets of all substrings.
# Method then combines all the subsets into a single array and returns the array.

# INPUT: string
# OUTPUT: none
# RETURN: array of strings
# SIDE EFFECTS: none
# -
# EXPLICIT:
# - Method takes a string argument
# - Method creates a list of all substrings of a string
# - List is arranged according to the substring position (group index 0, index 1 etc.)
# - List is arranged by increasing length
# - Use #leading_substrings in previous exercise

# IMPLICIT:
# --

# E - EXAMPLE

# Examples:

# substrings('abcde') == [
#   'a', 'ab', 'abc', 'abcd', 'abcde',
#   'b', 'bc', 'bcd', 'bcde',
#   'c', 'cd', 'cde',
#   'd', 'de',
#   'e'
# ]

# 'abcde'
# ['a', 'b', 'c', 'd', 'e']
# [
# ['a', 'ab', 'abc', 'abcd', 'abcde'],
# ['b', 'bc', 'bcd', 'bcde'],
# ['c', 'cd', 'cde',],
# ['d', 'de',],
# ['e']
# ]

# string length, 5
# 'abcde', 0
# 'bcde', 1
# 'cde', 2
# 'de', 3
# 'e', 4

# --
# D - DATA STRUCTURE
# Array - Nested array with subarray of subtrings -> Return flattened array

# INTERMEDIATE:
# Strings: set of substrings ['abcde', 'bcde', 'cde', 'de', 'e']
# Numbers: string length, char index
# Boolean: 
# Range: --
# Array: array of substrings from each substring
# Hash: --

# --
# A - ALGORITHM
# HIGH LEVEL:
# Create a set of substrings starting by the chars index number. Create
# an empty array to contain all sets of substrings created from each
# substring (#leading_substrings). For each substring element, produce
# a set of substrings and place in empty array. Combine all substring
# sets and return the array.

# STEP BY STEP:
# - Accept string argument, 'str'
# - index = 0
# - str_length = 'str' length
# - substrs = []
# - Enter loop
#   - Create substring, starting at index value with length of 'str_length'
#   - Append substring to 'substrs'

# - For each element 'sub_string' in 'substrs'
#   - leading_substrings(sub_string)
#   - Append result to an empty array
# - Combine all subarrays into an array
# - Return array

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

def substrings(str)
  str_length = str.size
  substrs = []
  
  str_length.times do |n|
    substrs << str[n, str_length]
    str_length -= 1
  end
  
  substrs.each_with_object([]) do |sub_string, sub_sets|
    sub_sets << leading_substrings(sub_string)
  end.flatten
end

p substrings('abcde') == [
  'a', 'ab', 'abc', 'abcd', 'abcde',
  'b', 'bc', 'bcd', 'bcde',
  'c', 'cd', 'cde',
  'd', 'de',
  'e'
]
