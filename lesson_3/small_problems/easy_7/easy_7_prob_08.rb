###############################################################################
# PROBLEM (EASY 7, # 8):

# P - PROBLEM

# Write a method that takes two Array arguments in which each Array contains a
# list of numbers, and returns a new Array that contains the product of each
# pair of numbers from the arguments that have the same index. You may assume
# that the arguments contain the same number of elements.

# INPUT: array (two)
# OUTPUT: array

# EXPLICIT:
# 1 - Method takes two array arguments
# 2 - Method multiplies each element with the same index from both arrays
# 3 - Method returns a new array containing each product
# 4 - Assume arrays have the same number of elements

# E - EXAMPLE

# Examples:

# multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]

# D - DATA STRUCTURE

# Array - argument and return value

# A - ALGORITHM

# 1 - Accept two array arguments
# 2 - Initialize prod_arr with an empty array
# 3 - Iterate over the first array
# 4 - For each element, retrieve the element at the same index from
#     the second array
# 5 - Mutliply the elements
# 6 - Append the result to the empty array
# 7 - After iteration, return the anew rray

# C - CODE

def multiply_list(arr1, arr2)
  prod_arr = []

  arr1.each_with_index do |num, idx|
    prod_arr << num * arr2[idx]
  end

  prod_arr
end

p multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]
