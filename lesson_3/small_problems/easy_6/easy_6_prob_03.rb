################################################################################
# PROBLEM (EASY 6, # 3):
# The Fibonacci series is a series of numbers (1, 1, 2, 3, 5, 8, 13, 21, ...)
# such that the first 2 numbers are 1 by definition, and each subsequent number
# is the sum of the two previous numbers. This series appears throughout the
# natural world.

# Computationally, the Fibonacci series is a very simple series, but the results
# grow at an incredibly rapid rate. For example, the 100th Fibonacci number is
# 354,224,848,179,261,915,075 -- that's enormous, especially considering that
# it takes 6 iterations before it generates the first 2 digit number.

# Write a method that calculates and returns the index of the first Fibonacci
# number that has the number of digits specified as an argument.
# (The first Fibonacci number has index 1.)

# You may assume that the argument is always greater than or equal to 2.

# INPUT: integer (digit number)
# OUTPUT: integer (index)

# EXPLICIT:
# 1 - Write a method that takes an integer argument
# 2 - Method calculates a Fibonacci sequence (1, 1, 2, 3, 5..)
# 3 - Method determines the index of the number that has the number of digits equal to the argument
# 4 - First Fibonacci number is 1 at index 1
# 5 - Assume that argument is always greater or equal to 2
# 6 - Fibonacci Sequence:
#     1 + 1 = 2
#     1 + 2 = 3
#     2 + 3 = 5
#     ...

# E - EXAMPLE

# Examples:

# find_fibonacci_index_by_length(2) == 7          # 1 1 2 3 5 8 13
# find_fibonacci_index_by_length(3) == 12         # 1 1 2 3 5 8 13 21 34 55 89 144
# find_fibonacci_index_by_length(10) == 45
# find_fibonacci_index_by_length(100) == 476
# find_fibonacci_index_by_length(1000) == 4782
# find_fibonacci_index_by_length(10000) == 47847

# D - DATA STRUCTURE

# A - ALGORITHM

# 1 - Create first number variable, initialize at 1
# 2 - Create second number variable, initialize at 1
# 3 - Create index number variable, initialize at 2 (where 1 is 1, 1 is 2..)
# 4 - Enter loop
# 5 - Increment index number by 1
# 6 - Get the sum of the first and second numbers
# 7 - Initialize sum variable with the return value of #6
# 8 - Reassign first num with second num value
# 9 - Reassign second num with sum value
# 10 - Is sum's number of digits equal to the argument?
# 11 - If true, exit loop and return value of index
# 12 - If false, continue #5

# C - CODE

def find_fibonacci_index_by_length(digits)
  first_num = 1
  second_num = 1
  idx = 2

  loop do
    idx += 1
    sum = first_num + second_num
    first_num = second_num
    second_num = sum
    break if sum.to_s.size >= digits
  end

  idx
end

p find_fibonacci_index_by_length(2) == 7          # 1 1 2 3 5 8 13
p find_fibonacci_index_by_length(3) == 12         # 1 1 2 3 5 8 13 21 34 55 89 144
p find_fibonacci_index_by_length(10) == 45
p find_fibonacci_index_by_length(100) == 476
p find_fibonacci_index_by_length(1000) == 4782
p find_fibonacci_index_by_length(10000) == 47847
