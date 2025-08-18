################################################################################
# P - PROBLEM

# In the previous exercise, you developed a method that converts simple numeric
# strings to Integers. In this exercise, you're going to extend that method to
# work with signed numbers.

# Write a method that takes a String of digits, and returns the appropriate
# number as an integer. The String may have a leading + or - sign; if the first
# character is a +, your method should return a positive number; if it is a -,
# your method should return a negative number. If no sign is given, you should
# return a positive number.

# You may assume the string will always contain a valid number.

# You may not use any of the standard conversion methods available in Ruby,
# such as String#to_i, Integer(), etc. You may, however, use the
# string_to_integer method from the previous lesson.

# INPUT: string
# OUTPUT: integer

# EXPLICIT:
# 1 - method accepts a string object
# 2 - method returns a new integer object (string as number)
# 3 - string may have leading +/- sign
# 4 - return value should have the appropriate sign, if + or -
# 5 - do not use any existing methods of conversion
# 6 - previous method can be used 

# E - EXAMPLE

# string_to_signed_integer('4321') == 4321
# string_to_signed_integer('-570') == -570
# string_to_signed_integer('+100') == 100

# D - DATA STRUCTURE
# Hash - contains str-int number pairs
# Array - stores str char sequence, place value sequence

# A - ALGORITHM

# 1 - create hash containing str-int number pairs
# 2 - accept str argument
# 3 - convert str argument to a char array
# 4 - remove +/- from char array
# 5 - iterate over char array
# 6 - for each char, retrieve value using char as hash key
# 7 - store each number value into a new array
# 8 - determine the size of the num array, store value in counter variable
# 9 - iterate over the num array
# 10 - for each number, multiply by the result of 10**(counter - 1)
# 11 - after iteration, add all the elements from number array
# 12 - determine if the first char of the original string argument is "+" or "-"
# 13 - if "+" or numerical, return the sum
# 14 - if "-", prepend sum value with -

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

  # char_arr = str_num.chars.delete_if {|char| ["-", "+"].any?(char)}
  char_arr = str_num.chars.reject do |char|
    ["+", "-"].any?(char)
  end
  char_arr.each_with_object([]) do |char, num_arr|
    num_arr << HASHNUM[char]
  end


end

def numbers(str_num)

  int_arr = str_to_arr(str_num)
  counter = int_arr.size
  int_arr.map do |num|
    num * (10**(counter -= 1))
  end.sum

end

def string_to_signed_integer(str_num)
  
  sum = numbers(str_num)
  case str_num[0]
  when "+"
    then sum
  when "-"
    then -sum
  else
    sum
  end
end

p string_to_signed_integer('4321') == 4321
p string_to_signed_integer('-570') == -570
p string_to_signed_integer('+100') == 100
