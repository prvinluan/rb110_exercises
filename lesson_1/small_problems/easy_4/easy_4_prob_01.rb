################################################################################
# P - PROBLEM

# Write a method that takes two strings as arguments, determines the longest of
# the two strings, and then returns the result of concatenating the shorter
# string, the longer string, and the shorter string once again. You may assume
# that the strings are of different lengths.

# INPUT: two strings
# OUTPUT: single string

# EXPLICIT:
# 1 - method accepts two strings
# 2 - return value is a new string object
# 3 - method determines which string argument is long and which is short
# 4 - method returns result of concatenating short + long + short pattern

# IMPLICIT:
# 1 - assume that the two strings are different lengths
# 2 - return value is a new object

# E - EXAMPLE

# Examples:

# short_long_short('abc', 'defgh') == "abcdefghabc"
# short_long_short('abcde', 'fgh') == "fghabcdefgh"
# short_long_short('', 'xyz') == "xyz"

# D - DATA STRUCTURE

# A - ALGORITHM

# 1 - accept two string arguments
# 2 - determine length of each string argument
# 3 - determine which is long
# 4 - determine which is short
# 5 - concatenate short + long + short
# 6 - return new string

# C - CODE

def short_long_short(str1, str2)
  if str1.size > str2.size
    str2 + str1 + str2
  else
    str1 + str2 + str1
  end
end

def short_long_short(str1, str2)
  str1.size > str2.size ? (str2 + str1 + str2) : (str1 + str2 + str1)
end

p short_long_short('abc', 'defgh') == "abcdefghabc"
p short_long_short('abcde', 'fgh') == "fghabcdefgh"
p short_long_short('', 'xyz') == "xyz"
