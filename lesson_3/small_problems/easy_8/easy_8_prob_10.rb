################################################################################
# PROBLEM (EASY 8, # 10):
# Write a method that takes one argument, an array containing integers, and
# returns the average of all numbers in the array. The array will never be empty
# and the numbers will always be positive integers. Your result should also be an
# integer.

# Don't use the Array#sum method for your solution - see if you can solve this
# problem using iteration more directly.

# P - PROBLEM
# Method calculates and returns the average value of a given set of integers.

# INPUT: array of integers
# OUTPUT: none
# RETURN: integer
# SIDE EFFECTS: none
# -
# EXPLICIT:
# - Method accepts array of integers as argument
# - Argument is never empty, integer elements are always positive
# - Method calculates the average value of all integers
# - Method returns the average value, integer
# - Do no use Array#sum

# IMPLICIT:
# --
# E - EXAMPLE

# Examples:

# puts average([1, 6]) == 3 # integer division: (1 + 6) / 2 -> 3
# puts average([1, 5, 87, 45, 8, 8]) == 25
# puts average([9, 47, 23, 95, 16, 52]) == 40

# --
# D - DATA STRUCTURE/TYPE
# Integer - average value

# INTERMEDIATE:
# Strings: --
# Numbers: sum of all integers (accumulator), size of array
# Boolean: --
# Range: --
# Array: --
# Hash: --

# --
# A - ALGORITHM
# HIGH LEVEL:
# Set accumulator variable to point to sum of all integers. For each
# integer element in array, add to accumulator. Divide accumulator
# by the length of array. Return the result.

# STEP BY STEP:
# - Accept array argument, 'arr_int'
# - sum_total = 0
# - For each 'num' in 'arr_int' add to 'sum_total'
# - 'sum_total' / length of 'arr_int'
# - Return the quotient result

# --
# C - CODE

def average(arr_int)
  sum_total = 0

  arr_int.each { |num| sum_total += num }

  sum_total / arr_int.size
end

puts average([1, 6]) == 3 # integer division: (1 + 6) / 2 -> 3
puts average([1, 5, 87, 45, 8, 8]) == 25
puts average([9, 47, 23, 95, 16, 52]) == 40
