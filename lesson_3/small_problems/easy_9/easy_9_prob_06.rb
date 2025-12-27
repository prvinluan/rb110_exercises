###############################################################################
# PROBLEM (EASY 9, # 6):
# Create a method that takes two integers as arguments. The first argument is a
# count, and the second is the first number of a sequence that your method will
# create. The method should return an Array that contains the same number of
# elements as the count argument, while the values of each element will be
# multiples of the starting number.

# You may assume that the count argument will always have a value of 0 or
# greater, while the starting number can be any integer value. If the count is
# 0, an empty list should be returned.

# P - PROBLEM
# Given two arguments representing the count and first num of a sequence, method
# returns an array with the size of the count and the elements being all multiples
# of the first num. Count argument will always be 0 or greater and first num
# can be any integer. Return an empty [] if count is 0.

# INPUT: two integers
# OUTPUT: none
# RETURN: array
# SIDE EFFECTS: none
# -
# EXPLICIT:
# - Method accepts two integer arguments, count and first num in sequence
# - Method returns an array of integers
# - Return array size is == to count
# - Elements are multiples of first num, starting with first num
# - Count argument is always 0 or greater
# - First num is any integer
# - If count == 0, return []

# IMPLICIT:

# --
# E - EXAMPLE

# Examples:

# sequence(5, 1) == [1, 2, 3, 4, 5]
# sequence(4, -7) == [-7, -14, -21, -28]
# sequence(3, 0) == [0, 0, 0]
# sequence(0, 1000000) == []

# --
# D - DATA STRUCTURE/TYPES
# Array - array of integers (multiples)

# INTERMEDIATE:
# Strings: --
# Numbers: 1 thru count argument, multiply all nums by start num
# Boolean: --
# Range: (1..count argument)
# Array: to contain all mutliples
# Hash: --
# --
# A - ALGORITHM
# HIGH LEVEL:
# Create an empty array to contain all multiples of first num argument. Set range
# from 1 thru count argument. For each number in range, multiply the first num.
# Place the product in the empty array. Return array.

# STEP BY STEP:
# - Accept two integer arguments, 'count' and 'first_num'
# - Return [] if 'count' == 0
# - multiples = []
# - nums = (1..count)
# - For each 'n' in 'nums'
#   - n * first_num
#   - Append product to 'multiples'
# - Return multiples

# --
# C - CODE

def sequence(count, first_num)
  return [] if count == 0

  multiples = []
  for n in (1..count)
    multiples << n * first_num
  end

  multiples
end

def sequence(count, first_num)
  multiples = []

  (1..count).each do |n|
    multiples << (n * first_num)
  end
  
  multiples
end

def sequence(count, first_num)
  (1..count).map do |n|
    n * first_num
  end
end


p sequence(5, 1) #== [1, 2, 3, 4, 5]
p sequence(4, -7) #== [-7, -14, -21, -28]
p sequence(3, 0) #== [0, 0, 0]
p sequence(0, 1000000) #== []
