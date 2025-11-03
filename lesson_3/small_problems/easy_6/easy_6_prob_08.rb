################################################################################
# P - PROBLEM

# Given an unordered array and the information that exactly one value in the
# array occurs twice (every other value occurs exactly once), how would you
# determine which value occurs twice? Write a method that will find and return
# the duplicate value that is known to be in the array.

# INPUT: array
# OUTPUT: integer

# EXPLICIT:
# 1 - Write a method that takes an array as an argument
# 2 - Method finds the element(number) that occurs twice
# 3 - Array is unordered
# 4 - A single element occurs twice in array argument
# 5 - Other elements are unique

# E - EXAMPLE

# Examples:

# find_dup([1, 5, 3, 1]) == 1
# find_dup([18,  9, 36, 96, 31, 19, 54, 75, 42, 15,
#           38, 25, 97, 92, 46, 69, 91, 59, 53, 27,
#           14, 61, 90, 81,  8, 63, 95, 99, 30, 65,
#           78, 76, 48, 16, 93, 77, 52, 49, 37, 29,
#           89, 10, 84,  1, 47, 68, 12, 33, 86, 60,
#           41, 44, 83, 35, 94, 73, 98,  3, 64, 82,
#           55, 79, 80, 21, 39, 72, 13, 50,  6, 70,
#           85, 87, 51, 17, 66, 20, 28, 26,  2, 22,
#           40, 23, 71, 62, 73, 32, 43, 24,  4, 56,
#           7,  34, 57, 74, 45, 11, 88, 67,  5, 58]) == 73

# D - DATA STRUCTURE

# Array - argument

# A - ALGORITHM

# 1 - Accept array argument
# 2 - Iterate over array
# 3 - For each element, determine if it appears twice
# 4 - If false, keep iterating
# 5 - If true, return the element

# C - CODE

def find_dup(num_arr)
  num_arr.each do |num|
    return num if num_arr.count(num) == 2
  end
end

# def find_dup(num_arr)
#   num_arr.find { |num| num_arr.count(num) == 2} # Enumerable#find returns element that returns a truthy
# end

p find_dup([1, 5, 3, 1]) == 1
p find_dup([18,  9, 36, 96, 31, 19, 54, 75, 42, 15,
          38, 25, 97, 92, 46, 69, 91, 59, 53, 27,
          14, 61, 90, 81,  8, 63, 95, 99, 30, 65,
          78, 76, 48, 16, 93, 77, 52, 49, 37, 29,
          89, 10, 84,  1, 47, 68, 12, 33, 86, 60,
          41, 44, 83, 35, 94, 73, 98,  3, 64, 82,
          55, 79, 80, 21, 39, 72, 13, 50,  6, 70,
          85, 87, 51, 17, 66, 20, 28, 26,  2, 22,
          40, 23, 71, 62, 73, 32, 43, 24,  4, 56,
          7,  34, 57, 74, 45, 11, 88, 67,  5, 58]) == 73
