################################################################################
# P - PROBLEM

# Write a method that searches for all multiples of 3 or 5 that lie between 1
# and some other number, and then computes the sum of those multiples.
# For instance, if the supplied number is 20,
# the result should be 98 (3 + 5 + 6 + 9 + 10 + 12 + 15 + 18 + 20).

# You may assume that the number passed in is an integer greater than 1.

# INPUT: integer
# OUTPUT: integer

# EXPLICIT:
# 1 - method accepts integer argument
# 2 - method searches for all numbers that are multiples of 3 and 5
# 3 - method returns the sum of the numbers
# 4 - argument is always greater than 1

# IMPLICIT:
# 1 - numbers should be stored in an new array

# E - EXAMPLE

# multisum(3) == 3
# multisum(5) == 8
# multisum(10) == 33
# multisum(1000) == 234168

# D - DATA STRUCTURE
# Array - to contain all numbers that are multiples of 3 and 5

# A - ALGORITHM

# 1 - accept integer argument
# 2 - create empty array to contain all numbers that are multiples
# 3 - iterate over range
# 4 - for every number, check if number is divisible by 3 or 5
# 5 - if true, place number in array
# 6 - if false, next
# 7 - after iteration, add all numbers in array
# 8 - return the sum

# C - CODE

# Using helper methods

def multiple(num)
  # multiple = []
  # (1..num).each do |n|
  #   multiple << n if (n % 3 == 0 || n % 5 == 0)
  # end
  # multiple

  (1..num).select do |n|
    n % 3 == 0 || n % 5 == 0
  end
end

def sum(multiples)
  # sum = 0
  # multiples.each do |num|
  #   sum += num
  # end
  # sum

  multiples.sum
end

def multisum(num)
  sum(multiple(num))
end

# One method - multiple and sum
# def multisum(num)
#   (1..num).select do |n|
#     n % 3 == 0 || n % 5 == 0
#   end.sum
# end

p multisum(3) == 3
p multisum(5) == 8
p multisum(10) == 33
p multisum(1000) == 234168
