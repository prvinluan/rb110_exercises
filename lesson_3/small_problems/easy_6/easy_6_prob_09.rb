################################################################################
# P - PROBLEM

# Write a method named include? that takes an Array and a search value as
# arguments. This method should return true if the search value is in the array,
# false if it is not. You may not use the Array#include? method in your solution.

# INPUT: array, integer
# OUTPUT: boolean

# EXPLICIT:
# 1 - Write a method that takes two arguments, array and search value
# 2 - Method determines if value is in the array
# 3 - Method returns a boolean value based if it is present
# 4 - Do not use Array#include?

# E - EXAMPLE

# include?([1,2,3,4,5], 3) == true
# include?([1,2,3,4,5], 6) == false
# include?([], 3) == false
# include?([nil], nil) == true
# include?([], nil) == false

# D - DATA STRUCTURE

# Array - argument

# A - ALGORITHM

# 1 - Accept array argument and search value
# 2 - Iterate over the array
# 3 - For each element, determine if element is equal to search value
#     3a - If element is is equal to search value return true value
#     3b - If element is not equal, keep iterating
#     3c - If there are no more elements to iterate over, return false value

# C - CODE

def include?(numbers, find_num)
  numbers.each do |num|
    return true if num == find_num
  end
  false
end

# def include?(arr, value)
#   arr.any?(value)
# end

p include?([1,2,3,4,5], 3) == true
p include?([1,2,3,4,5], 6) == false
p include?([], 3) == false
p include?([nil], nil) == true
p include?([], nil) == false
