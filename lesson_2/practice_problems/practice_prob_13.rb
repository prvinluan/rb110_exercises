################################################################################
# PROBLEM 13:

# P - PROBLEM
# Given the following data structure, return a new array containing the same
# sub-arrays as the original but ordered logically by only taking into
# consideration the odd numbers they contain.

# arr = [[1, 6, 9], [6, 1, 7], [1, 8, 3], [1, 5, 9]]

# The sorted array should look like this:
# [[1, 8, 3], [1, 5, 9], [6, 1, 7], [1, 6, 9]]

# INPUT: array
# OUTPUT: array

# EXPLICIT:
# 1 - accept nested array argument
# 2 - return nested array sorted
# 3 - array must have same number of elements as argument
# 4 - array is sorted by the odd numbers it contains
# 5 - array is sorted in ascending order

# IMPLICIT:
# 1 - return a new nested array object

# E - EXAMPLE
# D - DATA STRUCTURE

# A - ALGORITHM

# 1 - Accept nested array argument
# 2 - Iterate over the nested array
# 3 - For each sub-array, select all odd elements
# 4 - Return all odd elements in a new array
# 5 - Using the new odds array, sort the array argument
# 6 - Return new sorted nested array

# C - CODE

arr = [[1, 6, 9], [6, 1, 7], [1, 8, 3], [1, 5, 9]]

arr.sort_by do |sub_arr|
  sub_arr.select do |element|
    element.odd?
  end
end

# => [[1, 8, 3], [1, 5, 9], [6, 1, 7], [1, 6, 9]]
