###############################################################################
# PROBLEM (EASY 9, # 2):
# A double number is a number with an even number of digits whose left-side digits
# are exactly the same as its right-side digits. For example, 44, 3333, 103103, 7676
# are all double numbers. 444, 334433, and 107 are not.

# Write a method that returns 2 times the number provided as an argument, unless
# the argument is a double number; double numbers should be returned as-is.

# Note: underscores are used for clarity above. Ruby lets you use underscores when
# writing long numbers; however, it does not print the underscores when printing
# long numbers. Don't be alarmed if you don't see the underscores when running your
# tests.

# P - PROBLEM
# Method determines if an integer argument is a double number, if so, it returns
# the number and if not it returns it's value doubled.

# INPUT: integer
# OUTPUT: none
# RETURN: integer
# SIDE EFFECTS: none
# -
# EXPLICIT:
# - Method accepts an integer argument
# - Method determines if argument is a double number
# - 44, 3333, 103103, 7676 are double, 444, 334433 and 107 are not
# - If double number, returns as is
# - If not, return double the value

# IMPLICIT:

# --
# E - EXAMPLE

# Examples:

# twice(37) == 74 # doubled
# twice(44) == 44 # double num
# twice(334433) == 668866 # doubled
# twice(444) == 888 # doubled, odd number of digits
# twice(107) == 214 # doubled
# twice(103103) == 103103 # double num
# twice(3333) == 3333 # double num
# twice(7676) == 7676 # double num
# twice(123_456_789_123_456_789) == 123_456_789_123_456_789 # double num
# twice(5) == 10 # doubled

# --
# D - DATA STRUCTURE/TYPES
# Integer - double number or twice the value of argument

# INTERMEDIATE:
# Strings: convert integer to string, string length and string slices for left and right
# Numbers: string index for slices
# Boolean: a double number? even length? compare string slices? 
# Range: --
# Array: --
# Hash: --
# --
# A - ALGORITHM
# HIGH LEVEL: Using a helper method, determine if argument is a double number. Helper
# method checks if number of digits are even and if left and right side are equal to
# each other. If argument is a double num, return that num. If not, multiply the number
# by two and return the result.

# STEP BY STEP:
# - Accept integer argument, 'num'
# - is_double?(num)
#   - If true, return 'num'
#   - If false, return result of 'num' * 2

# #is_double?(num)
# - Accept integer argument, 'num'
# - Convert 'num' to a string 'str_num'
# - Determine 'str_num' length
#   - If length is odd, return false
#   - If length is even
#     - mid = length / 2
#     - retrieve left side starting at index 0 with mid number of chars
#     - retrieve right side starting at index mid with mid number of chars
#     - left side == right side ?
#       - If so, return true
#       - If not, return false

# --
# C - CODE

def is_double?(num)
  str_num = num.to_s
  length = str_num.size

  # if length.even?
  #   mid = length / 2
  #   str_num[0, mid] == str_num[mid, mid]
  # else
  #   return false
  # end

  return false if length.odd?

  mid = length / 2
  str_num[0, mid] == str_num[mid, mid]
end

def twice(num)
  is_double?(num) ? num : num * 2
end

p twice(37) == 74
p twice(44) == 44
p twice(334433) == 668866
p twice(444) == 888
p twice(107) == 214
p twice(103103) == 103103
p twice(3333) == 3333
p twice(7676) == 7676
p twice(123_456_789_123_456_789) == 123_456_789_123_456_789
p twice(5) == 10
