################################################################################
# P - PROBLEM

# Write a method that takes one argument, a positive integer, and returns a list
# of the digits in the number.

# INPUT: integer
# OUTPUT: array

# EXPLICIT:
# 1 - method takes an integer argument
# 2 - method returns an array of integers
# 3 - each element is the digit in the integer argument

# IMPLICIT:
# 1 - return a new array object

# E - EXAMPLE

# puts digit_list(12345) == [1, 2, 3, 4, 5]     # => true
# puts digit_list(7) == [7]                     # => true
# puts digit_list(375290) == [3, 7, 5, 2, 9, 0] # => true
# puts digit_list(444) == [4, 4, 4]             # => true

# D - DATA STRUCTURE
# Array - to store each digit in the integer argument

# A - ALGORITHM

# 1 - accept integer argument
# 2 - create an empty array to store digits from integer
# 3 - initialize counter to value of argument
# 4 - enter a loop
# 5 - get the quotient and remainder of counter and 10
# 6 - assign quotient to counter
# 7 - append remainder to new array
# 8 - exit loop is quotient is equal to 0
# 9 - return the new array

# C - CODE

def digit_list(num)
  digit_arr = []
  counter = num
  loop do
    counter, digit = counter.divmod(10)
    digit_arr << digit
    break if counter == 0
  end
  digit_arr.reverse
end

p digit_list(12345) == [1, 2, 3, 4, 5]     # => true
p digit_list(7) == [7]                     # => true
p digit_list(375290) == [3, 7, 5, 2, 9, 0] # => true
p digit_list(444) == [4, 4, 4]             # => true
