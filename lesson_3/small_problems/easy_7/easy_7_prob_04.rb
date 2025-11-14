# PROBLEM (EASY 7, # 4):

# P - PROBLEM

# Write a method that takes a string as an argument and returns a new string
# in which every uppercase letter is replaced by its lowercase version, and
# every lowercase letter by its uppercase version. All other characters
# should be unchanged.

# You may not use String#swapcase; write your own version of this method.

# INPUT: string
# OUTPUT: string

# EXPLICIT:
# 1 - Method takes a string argument
# 2 - Method takes each char of the word and changes it's case to lowercase
#     if uppercase and uppercase if lowercase
# 3 - Method returns a new string
# 4 - All other non-alpha chars should be ignored
# 5 - Do not use String#swapcase

# E - EXAMPLE

# Example:

# swapcase('PascalCase') == 'pASCALcASE'
# swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'

# D - DATA STRUCTURE

# Array - contain each char element, to be iterated on

# A - ALGORITHM

# 1 - Accept string argument
# 2 - Convert the string into an array of characters
# 3 - Iterate over the array
# 4 - For each element:
#     4a - Determine if non-alpha, if true do nothing
#     4b - If false, determine if char is upcased
#     4c - If true, downcase char
#     4d - If false, upcase char
# 5 - After iteration, convert chars back into a string
# 6 - Return the string

# C - CODE

def swapcase(str_sequence)
  str_sequence.chars.map do |char|
    char == char.upcase ? char.downcase : char.upcase
  end.join
end

p swapcase('PascalCase') == 'pASCALcASE'
p swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'
