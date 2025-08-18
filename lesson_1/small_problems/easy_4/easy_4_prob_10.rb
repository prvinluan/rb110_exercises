################################################################################
# P - PROBLEM

# In the previous exercise, you developed a method that converts non-negative
# numbers to strings. In this exercise, you're going to extend that method by
# adding the ability to represent negative numbers as well.

# Write a method that takes an integer, and converts it to a string
# representation.

# You may not use any of the standard conversion methods available in Ruby,
# such as Integer#to_s, String(), Kernel#format, etc. You may, however, use
# integer_to_string from the previous exercise.

# INPUT: integer
# OUTPUT: string

# EXPLICIT:
# 1 - method accepts a positive/negative integer
# 2 - method returns the integer argument as a string object
#     a - if integer is negative (-), string must have "-"
#     b - if integer is positive (+), string must have "+"
#     c - if integer is 0, then string should be "0"
# 3 - previous method may be used
# 4 - do no use existing Ruby methods

# E - EXAMPLE

# signed_integer_to_string(4321) == '+4321'
# signed_integer_to_string(-123) == '-123'
# signed_integer_to_string(0) == '0'

# D - DATA STRUCTURE
# Hash - to store digit-char pair
# Array - to store numbers

# A - ALGORITHM

# 1 - create hash containing integer-char pairs
# 2 - initialize num_arr with empty string
# 3 - accept integer argument
# 4 - get absolute value of integer argument
# 5 - begin a loop
# 6 - get the quotient and remainder of dividing the integer and 10
# 7 - reassign the quotient to the integer variable
# 8 - using the modulus as hash key, retrieve the corresponding value
# 9 - append string value to beggining of string
# 10 - after iteration, check if integer argument is negative
# 11 - if negative, prepend the string with "-"
# 12 - if positive, prepend the string with "+"
# 13 - if integer is 0, return the new string
# 14 - return the new string

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

def integer_to_arr(num)
  str_num = ""
  number = num.abs
  loop do
    number, digit = number.divmod(10)
    str_num.insert(0, HASHCHAR[digit])
    break if number == 0
  end
  str_num
end

def signed_integer_to_string(num)
  
  str_number = integer_to_arr(num)
  
  if num == 0
    str_number
  elsif num.negative?
    str_number.insert(0, "-")
  else
    str_number.insert(0, "+")
  end

  str_number
end

p signed_integer_to_string(4321) == '+4321'
p signed_integer_to_string(-123) == '-123'
p signed_integer_to_string(0) == '0'
