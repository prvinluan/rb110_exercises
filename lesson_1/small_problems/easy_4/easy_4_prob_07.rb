################################################################################
# P - PROBLEM

# The String#to_i method converts a string of numeric characters (including an
# optional plus or minus sign) to an Integer. String#to_i and the Integer
# constructor (Integer()) behave similarly. In this exercise, you will create a
# method that does the same thing.

# Write a method that takes a String of digits, and returns the appropriate
# number as an integer. You may not use any of the methods mentioned above.

# For now, do not worry about leading + or - signs, nor should you worry about
# invalid characters; assume all characters will be numeric.

# You may not use any of the standard conversion methods available in Ruby to
# convert a string to a number, such as String#to_i, Integer(), etc. Your method
# should do this the old-fashioned way and calculate the result by analyzing the
# characters in the string.

# INPUT: string
# OUPUT: integer

# EXPLICIT:
# 1 - method accepts string
# 2 - method returns a new integer object
# 3 - integer object is the string in integer form
# 4 - do not use any existing methods (String#to_i or Integer())

# E - EXAMPLE

# string_to_integer('4321') == 4321
# string_to_integer('570') == 570

# D - DATA STRUCTURE
# Hash - to store each string char - integer equivalent pair
# Array - to store each string char

# A - ALGORITHM

# 1 - accept string argument
# 2 - create hash where each key is number char and value is integer equivalent
# 3 - convert string into an array of chars
# 4 - iterate over array of chars
# 5 - for each element, use as hash key to retrieve integer value
# 6 - store each value in a integer array
# 7 - after iteration determine the length of integer array
# 8 - initialize base 10 place value with 10 ** (size - 1)
# 9 - iterate over integer array
# 10 - multiply num by base variable
# 11 - divide base variable by 10
# 12 - repeat until base variable becomes 1
# 10 - after iteration, determine sum of all elements in integer array
# 11 - return sum

# C - CODE

HASHNUM = {
  "1" => 1,
  "2" => 2,
  "3" => 3,
  "4" => 4,
  "5" => 5,
  "6" => 6,
  "7" => 7,
  "8" => 8,
  "9" => 9,
  "0" => 0
}
def str_to_arr(str_num)

  str_num.chars.each_with_object([]) do |value, arr_num|
    arr_num << HASHNUM[value]
  end
end

def string_to_integer(str_num)

  arr_numbers = str_to_arr(str_num)

  count = arr_numbers.size
  arr_numbers.map do |number|
    number * (10**(count -= 1))
  end.sum

end

p string_to_integer('4321') == 4321
p string_to_integer('570') == 570
p string_to_integer('1') == 1
p string_to_integer('0') == 0
