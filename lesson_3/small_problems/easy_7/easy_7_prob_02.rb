# PROBLEM (EASY 7, # 2):

# P - PROBLEM

# Write a method that takes a string, and then returns a hash that contains 3
# entries: one represents the number of characters in the string that are
# lowercase letters, one represents the number of characters that are uppercase
# letters, and one represents the number of characters that are neither.

# INPUT: string
# OUTPUT: hash

# EXPLICITS:
# 1 - Method accepts a string argument
# 2 - Method determines the number of type of chars in the string:
#     2a - lowercase
#     2b - uppercase
#     2c - neither
# 3 - Method returns a new hash
# 4 - Hash has key-value pairs:
#     4a - lowercase => count
#     4b - uppercase => count
#     4c - neither => count

# IMPLICITS:
# 1 - Non-alpha chars such are counted as neither, including " "

# E - EXAMPLE

# Examples

# letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
# letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
# letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
# letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }

# D - DATA STRUCTURE

# Array - array of chars from string
# Hash - type of chars and count of each

# A - ALGORITHM

# 1 - Accept string argument
# 2 - Initialize hash_count with { lowercase: 0, uppercase: 0, neither: 0 }
# 2 - Convert string into array of chars
# 3 - Iterate over the array
# 4 - Determine if element is non-alpha
# 5 - If true, increment :neither by 1
# 6 - If false, determine if char is lowercase
# 7 - If true, increment :lowercase by 1
# 8 - If false, determine if char is uppercase
# 9 - If true, increment :uppercase by 1
# 10 - After iteration, return the hash

# C - CODE

def letter_case_count(str)
  hash_count = { lowercase: 0,
                 uppercase: 0,
                 neither: 0 }
  
  str.chars.each do |char|
    if char.match?(/[^A-Za-z]/)
      hash_count[:neither] += 1
    elsif char.match?(/[A-Z]/)
      hash_count[:uppercase] += 1
    elsif char.match?(/[a-z]/)
      hash_count[:lowercase] += 1
    end
  end

  hash_count
end

p letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
p letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
p letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
p letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }
