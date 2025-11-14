###############################################################################
# PROBLEM (EASY 7, # 5):

# P - PROBLEM

# Write a method that takes a String as an argument, and returns a new String
# that contains the original value using a staggered capitalization scheme in
# which every other character is capitalized, and the remaining characters are
# lowercase. Characters that are not letters should not be changed, but count as
# characters when switching between upper and lowercase.

# INPUT: string
# OUTPUT: string

# EXPLICIT:
# 1 - Method accepts string argument
# 2 - Method alternates between upcase/downcase staggered capitalization scheme
# 3 - Method returns a new string
# 4 - Non-alpha characters should not be changed
# 5 - Non-alpha characters are counted when switching between upcase/lowercase

# E - EXAMPLE

# Example:

# staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
# staggered_case('ALL_CAPS') == 'AlL_CaPs'
# staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'

# D - DATA STRUCTURE

# Array - contains characters, can be iterated on

# A - ALGORITHM

# 1 - Accept string argument
# 2 - Convert string into an array of characters
# 3 - Iterate over the array
# 4 - For each element, determine the index
# 5 - If index is even, change char to uppercase
# 6 - If index is odd, change char to lowercase
# 7 - Convert array back into a string
# 8 - Return the string

# C - CODE

def staggered_case(str_seq)
  str_seq.chars.map.with_index do |char, idx|
    idx.even? ? char.upcase : char.downcase
  end.join
end

staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
staggered_case('ALL_CAPS') == 'AlL_CaPs'
staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'
