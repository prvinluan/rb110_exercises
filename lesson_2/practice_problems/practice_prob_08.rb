################################################################################
# PROBLEM 8:

# P - PROBLEM
# Using the each method, write some code to output all of the vowels from the
# strings.

# hsh = {first: ['the', 'quick'],
#       second: ['brown', 'fox'],
#       third: ['jumped'],
#       fourth: ['over', 'the', 'lazy', 'dog']
#     }

# INPUT: hash
# OUTPUT: string

# EXPLICIT:
# 1 - take hash
# 2 - output a string
# 3 - string must be a vowel from the string element of the array value

# E - EXAMPLE
# D - DATA STRUCTURE

# A - ALGORITHM

# 1 - Accept hash argument
# 2 - Iterate over the hash
# 3 - For each key-pair value
#     - Retrieve the value
#     - Iterate over the value
# 4 - For each element
#     - Convert string into an array of chars
# 5 - Iterate over the array of chars
#     - Determine if each char is a vowel
#     - If true, print char
#     - If false, next
# C - CODE

hsh = {first: ['the', 'quick'],
      second: ['brown', 'fox'],
      third: ['jumped'],
      fourth: ['over', 'the', 'lazy', 'dog']
    }

hsh.each_value do |val_arr|
  val_arr.each do |word|
    word.chars.each do |char|
      puts char if 'aeiou'.match?(char)
    end
  end
end
