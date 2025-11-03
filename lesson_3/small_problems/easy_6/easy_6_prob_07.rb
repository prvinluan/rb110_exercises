################################################################################
# P - PROBLEM
# Write a method that takes an Array as an argument, and returns two Arrays
# (as a pair of nested Arrays) that contain the first half and second half of
# the original Array, respectively. If the original array contains an odd number
# of elements, the middle element should be placed in the first half Array.

# INPUT: array
# OUTPUT: new nested array with two sub-arrays

# EXPLICIT:
# 1 - Write a method that accepts an array argument
# 2 - Method returns a new array
# 3 - Method divides the argument into two arrays
# 4 - Each array will have the same number of elements
# 5 - If argument has odd number of elements, the middle element
#     should be in the first array.
# 6 - Return array is a nested array with two sub-arrays

# E - EXAMPLE
# Examples:

# p halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]] # true
# p halvsies([1, 2, 3, 4, 1]) == [[1, 2, 3], [4, 1]] # true
# p halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]] # true
# p halvsies([5]) == [[5], []] # true
# p halvsies([]) == [[], []] # true

# D - DATA STRUCTURE
# Array - argument, return value (nested array with 2 sub-arrays)

# A - ALGORITHM

# 1 - Accept array argument
# 2 - Retrieve the length of the array argument, divide by 2.0
# 3 - If quotient is a float, round up to the next whole number
# 4 - Initialize subarr_size variable to the quotient
# 5 - Initialize nested_arr to an empty array
# 6 - Initialize counter variable to 0
# 7 - Enter loop
#     7a - Initialize sub_arr variable with an empty array
#     7b - Enter sub loop
#          1 - Exit sub loop if sub_arr length is equal to subarr_size
#          2 - Append element from array argument at index with value counter
#              to sub_arr array
#          3 - Increment counter by 1
#          4 - Go to # 1
#     7c - Append sub_arr to nested_arr
#     7d - Exit loop if nested_arr length is 2
#     7e - Go to 7a
# 8 - Return nested_arr

# C - CODE

def halvsies(arr)
  subarr_size = (arr.size/2.0).ceil
  [arr.take(subarr_size), arr.drop(subarr_size)]
end

p halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]] # true
p halvsies([1, 2, 3, 4, 1]) == [[1, 2, 3], [4, 1]] # true
p halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]] # true
p halvsies([5]) == [[5], []] # true
p halvsies([]) == [[], []] # true
