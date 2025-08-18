################################################################################
# P - PROBLEM

# Write a method that determines and returns the ASCII string value of a string
# that is passed in as an argument. The ASCII string value is the sum of the
# ASCII values of every character in the string.

# (You may use String#ord to determine the ASCII value of a character.)

# INPUT: string
# OUTPUT: integer

# EXPLICIT:
# 1 - method accepts a string integer
# 2 - method returns the ASCII string value
# 3 - ASCII string value is sum of ASCII values of every char
# 4 - String#ord is ok to use
# 5 - String#ord:
#     Returns the integer ordinal of the first character of self

# IMPLICIT:
# 1 - method returns a new object, integer
# 2 - Is " " considered a char?
# 3 - What about non-alpha chars?

# E - EXAMPLE

# ascii_value('Four score') == 984
# ascii_value('Launch School') == 1251
# ascii_value('a') == 97
# ascii_value('') == 0

# D - DATA STRUCTURE
# Array - to contain collection of chars

# A - ALGORITHM

# 1 - accept string argument
# 2 - convert string to an array of characters
# 3 - iterate over array
# 4 - for each char, retrieve ASCII string value using #ord
# 5 - get the sum of all string values
# 6 - return sum

# C - CODE

def ascii_value(str)
  # ascii_sum = 0
  # str.chars.each do |char|
  #   ascii_sum += char.ord
  # end
  # ascii_sum

  str.chars.map do |char|
    char.ord
  end.sum
end

p ascii_value('Four score') == 984
p ascii_value('Launch School') == 1251
p ascii_value('a') == 97
p ascii_value('') == 0
p ascii_value(' ') == 32 # ' ' is included in all test cases
