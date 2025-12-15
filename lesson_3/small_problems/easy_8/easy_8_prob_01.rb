################################################################################
# PROBLEM (EASY 8, # 1):
# Write a method that takes an Array of numbers and then returns the sum of the
# sums of each leading subsequence for that Array. You may assume that the Array
# always contains at least one number.

# P - PROBLEM
# Method creates a nested array where in each subarray is a subsequence of the
# given array. Each subarray is totalled and method returns the sum total of all
# the subarrays.

# INPUT: array of integers
# OUTPUT: none
# RETURN: integer (sum total value)
# SIDE EFFECTS: none
# -
# EXPLICIT:
# - Method accepts an array of integers
# - Array argument contains atleast one integer
# - If array has length of 1, return the integer element, element + starting sum (0) = element
# - Method creates a series of subsequences
# - Method sums each subsequence
# - Method returns sum total of all subsequence sums

# IMPLICIT:
# - Number of subsequences == array argument length
# --
# E - EXAMPLE

# Examples:

# sum_of_sums([3, 5, 2]) == (3) + (3 + 5) + (3 + 5 + 2) # -> (21)
# sum_of_sums([1, 5, 7, 3]) == (1) + (1 + 5) + (1 + 5 + 7) + (1 + 5 + 7 + 3) # -> (36)
# sum_of_sums([4]) == 4
# sum_of_sums([1, 2, 3, 4, 5]) == 35

# --
# D - DATA STRUCTURE/TYPES
# Integer - sum total value

# INTERMEDIATE:
# Strings: --
# Numbers: sum total of all elements in a subsequence, sum total of all subsequent sums,
#          counter, initial sum value (0), index number (iterate)
# Boolean: exit out of loops during iteration for array argument, length of array argument
# Range: --
# Array: array of sums
# Hash: --
# --

# [3, 5, 2]
# [[3], [3, 5], [3, 5, 2]]
# [3, 8, 10]
# => 21

# [3, 5, 2]
# [3, (3 + 5), (3 + 5 + 2)] == [3, 8, 10]
# => 21

# [3] + [3, 5] + [3, 5, 2] == 3 + 8 + 10

# A - ALGORITHM
# HIGH LEVEL:
# A:
# Create a new array where each element is the sum of initial integer of 0 incremented
# by each element in the array argument. Return the sum total of all sums.

# STEP BY STEP:
# - Accept array argument, 'arr_nums'
# - arr_sums = []
# - element_sum = 0
# - For each element 'num' in 'arr_nums'
#   - element_sum + 'num'
#   - Append result to 'arr_nums'
# - After iteration, sum total all sum elements in 'arr_nums'
# - Return sum total value

# --
# C - CODE

# OPTION 2:
def sum_of_sums(arr_nums)
  arr_sums = []
  element_sum = 0

  arr_nums.each do |num|
    arr_sums << element_sum += num
  end

  arr_sums.inject(:+)
end

# # OPTION 3:
# def sum_of_sums(arr_nums)
#   sum_total = 0
#   element_sum = 0

#   arr_nums.each do |num|
#     element_sum += num
#     sum_total += element_sum
#   end

#   sum_total
# end

# def sum_of_sums(arr_nums)
#   element_sum = 0

#   arr_nums.map do |num|
#     element_sum += num
#   end.inject(:+)
# end

p sum_of_sums([3, 5, 2]) == (3) + (3 + 5) + (3 + 5 + 2) # -> (21)
p sum_of_sums([1, 5, 7, 3]) == (1) + (1 + 5) + (1 + 5 + 7) + (1 + 5 + 7 + 3) # -> (36)
p sum_of_sums([4]) == 4
p sum_of_sums([1, 2, 3, 4, 5]) == 35
