################################################################################
# P - PROBLEM

# In the previous two exercises, you developed methods that convert simple
# numeric strings to signed Integers. In this exercise and the next, you're going
# to reverse those methods.

# Write a method that takes a positive integer or zero, and converts it to a
# string representation.

# You may not use any of the standard conversion methods available in Ruby,
# such as Integer#to_s, String(), Kernel#format, etc. Your method should do
# this the old-fashioned way and construct the string by analyzing and
# manipulating the number.

# INPUT: integer
# OUTPUT: string

# EXPLICIT:
# 1 - method accepts integer argument
# 2 - argument is positive integer or 0
# 3 - method returns a string object
# 4 - do not use existing Ruby methods

# IMPLICIT:
# 1 - method returns a new object

# E - EXAMPLE

# integer_to_string(4321) == '4321'
# integer_to_string(0) == '0'
# integer_to_string(5000) == '5000'

# D - DATA STRUCTURE
# Hash, to store integer-string char pairs
# Array, to store individual integers/chars

# A - ALGORITHM

# 1 - create hash containing integer-string char pairs
# 2 - accept integer argument
# 3 - retrieve all digits in the argument, store in a new array
# 4 - iterate over numbers array
# 5 - using number as hash key, retrieve char values
# 6 - store char values in array
# 7 - combine all char values in a single string
# 8 - returns the new string object

# C - CODE

HASHCHAR = {
  1 => "1",
  2 => "2",
  3 => "3",
  4 => "4",
  5 => "5",
  6 => "6",
  7 => "7",
  8 => "8",
  9 => "9",
  0 => "0",
}

def integer_to_string(num)
  num_arr = ""
  loop do
    num, digit = num.divmod(10)
    # num = div_mod[0]
    # digit = div_mod[1]
    num_arr.insert(0, HASHCHAR[digit])
    break if num == 0
  end
  num_arr
end
  
p integer_to_string(4321) == '4321'
p integer_to_string(0) == '0'
p integer_to_string(5000) == '5000'
p integer_to_string(1010) == '1010'
