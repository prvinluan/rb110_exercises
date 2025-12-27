###############################################################################
# PROBLEM (EASY 9, # 3):
# Write a method that takes an integer argument, and returns an Array of all
# integers, in sequence, between 1 and the argument.

# You may assume that the argument will always be a valid integer that is greater than 0.

# P - PROBLEM
# Method creates and returns an array containing all integer elements from 1 up
# to the given integer argument.

# INPUT: integer
# OUTPUT: none
# RETURN: array of integers
# SIDE EFFECTS: none
# -
# EXPLICIT:
# - Method accepts integer argument
# - Argument is always a valid integer greater than zero
# - Method places all integers from 1 to argument in an array
# - Elements are in ascending order
# - Method returns that array

# IMPLICIT:
# --
# E - EXAMPLE

# Examples:

# sequence(5) == [1, 2, 3, 4, 5]
# sequence(3) == [1, 2, 3]
# sequence(1) == [1]

# --
# D - DATA STRUCTURE/TYPES
# Array - sequence of integers

# INTERMEDIATE:
# Strings: --
# Numbers: 1 to num argument
# Boolean: --
# Range: 1..num argument
# Array: empty array to contain all numbers in sequence
# Hash: --
# --
# A - ALGORITHM
# HIGH LEVEL:
# Create a new empty array to contain all the numbers in sequence.
# Define the range of numbers, and for each number append to new
# array. Return that array.

# STEP BY STEP:
# - Accept integer argument, 'num'
# - all_nums = []
# - Iterate over the number starting with 1 thru 'num'
#   - For each 'n' in sequence, append 'n' to 'all_nums'
# - Retrun all_nums

# --
# C - CODE
def sequence(num)
  all_nums = []

  1.upto(num) { |n| all_nums << n }

  all_nums
end

p sequence(5) == [1, 2, 3, 4, 5]
p sequence(3) == [1, 2, 3]
p sequence(1) == [1]
