###############################################################################
# PROBLEM (EASY 7, # 9):

# P - PROBLEM

# Write a method that takes two Array arguments in which each Array contains a
# list of numbers, and returns a new Array that contains the product of every
# pair of numbers that can be formed between the elements of the two Arrays.
# The results should be sorted by increasing value.

# You may assume that neither argument is an empty Array.

# INPUT: two arrays
# OUTPUT: array

# EXPLICIT:
# 1 - Method accepts two array arguments
# 2 - Method multiplies each element of both arrays with each other
# 3 - Method returns a new array
# 4 - All products are contained in a the return array
# 5 - Return array is sorted in ascending order
# 5 - Assume both arugments are not empty

# IMPLICIT:
# 1 - Size of return array is array 1 size x array 2 size

# E - EXAMPLE

# Examples:

# multiply_all_pairs([2, 4], [4, 3, 1, 2]) == [2, 4, 4, 6, 8, 8, 12, 16]

# D - DATA STRUCTURE

# Array - arguments and return value

# A - ALGORITHM

# 1 - Accept two array arguments
# 2 - Initialize prod_arr variable with an empty array
# 3 - Iterate over the first array
# 4 - For each element:
#     4a - Iterate over the second array
#     4b - Multiply array 1 element for each array 2 element
#     4c - Append each product in the new array
# 5 - Sort new array elements in ascending order
# 6 - Assume both arrays are not empty

# C - CODE

# def multiply_all_pairs(arr1, arr2)
#   arr1.each_with_object([]) do |num1, prod_arr|
#     arr2.each do |num2|
#       prod_arr << num1 * num2
#     end
#   end.sort
# end

def multiply_all_pairs(arr1, arr2)
  arr1.product(arr2).map do |a, b|
    a * b
  end.sort
end

p multiply_all_pairs([2, 4], [4, 3, 1, 2]) == [2, 4, 4, 6, 8, 8, 12, 16]
