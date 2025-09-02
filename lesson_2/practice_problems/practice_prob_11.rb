################################################################################
# PROBLEM 11:

# P - PROBLEM
# Given the following data structure use a combination of methods, including
# either the select or reject method, to return a new array identical in structure
# to the original but containing only the integers that are multiples of 3.

# arr = [[2], [3, 5, 7, 12], [9], [11, 13, 15]]

# The returned array should have the following value:
# [[], [3, 12], [9], [15]]

# INPUT: nested array
# OUTPUT: nested array

# EXPLICIT:
# 1 - accept array argument
# 2 - return an array
# 3 - array must have the same structure, nested - 4 sub-arrays
# 4 - sub-arrays should only contain elements that are multiples of 3
# 5 - use select/reject

# E - EXAMPLE
# D - DATA STRUCTURE

# A - ALGORITHM

# 1 - Accept nested array argument
# 2 - Transform the nested array
# 3 - Iterate over the nested array
# 4 - For each sub-array, transform the sub-array
# 5 - Iterate over the sub-array
# 6 - Select all elements that are multiples of 3
# 7 - Iterate over each element
# 8 - Determine if element is a multiple of 3
# 9 - Return the selected elements
# 10 - Use selected elements to transform the sub-array
# 11 - Use the sub-array to transform the nested array
# 12 - Return the transformed nested array

# C - CODE

arr = [[2], [3, 5, 7, 12], [9], [11, 13, 15]]

arr.map do |sub_arr|
  sub_arr.select do |element|
    element % 3 == 0
  end
end

# => [[], [3, 12], [9], [15]]
