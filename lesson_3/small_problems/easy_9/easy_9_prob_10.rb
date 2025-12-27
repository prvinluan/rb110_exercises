###############################################################################
# PROBLEM (EASY 9, # 10):
# Write a method that takes one argument, a positive integer, and returns the
# sum of its digits.

# Examples:

# puts sum(23) == 5
# puts sum(496) == 19
# puts sum(123_456_789) == 45

# The tests above should print true.

# For a challenge, try writing this without any basic looping constructs
# (while, until, loop, and each).

# P - PROBLEM
# Given an integer argument, method returns the sum of all it's digits.

# INPUT: integer
# OUTPUT: none
# RETURN: integer
# SIDE EFFECTS: none
# -
# EXPLICIT:
# - Method takes an integer argument
# - Method calculates the sum of all the digits
# - Method returns the sum value
# - Do not use any of the basic looping constructs

# IMPLICIT:

# --
# E - EXAMPLE

# puts sum(23) == 5 (2 + 3)
# puts sum(496) == 19 (4 + 9 + 6)
# puts sum(123_456_789) == 45 (1 + 2 + 3 + 4 ...)

# --
# D - DATA STRUCTURE/TYPES
# Integer

# INTERMEDIATE:
# Strings: convert integer to string, separate into single chars to get each digit
# Numbers: accumulator  value (sum at 0), convert each number char into a integer
# Boolean: --
# Range: --
# Array: array of number string elements
# Hash: --

# --
# A - ALGORITHM
# HIGH LEVEL:
# Retrieve digits from the given argument. Convert integer argument into a string
# and then convert into an array of chars. Transform each string element into
# an integer. Total all the elements and return the sum value.

# STEP BY STEP:
# - Accept integer argument, 'num'
# - Convert 'num' to a string
# - Convert string into an array of chars
# - Transform each string element in the array
# - Get the total sum of all numbers in array
# - Return that sum value

# --
# C - CODE
def sum(num)
  num.to_s.chars.map do |n|
    n.to_i
  end.reduce(:+)
end

puts sum(23) == 5
puts sum(496) == 19
puts sum(123_456_789) == 45
