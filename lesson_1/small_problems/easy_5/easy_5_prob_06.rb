################################################################################
# P - PROBLEM

# Write a method that takes a string with one or more space separated words and
# returns a hash that shows the number of words of different sizes.

# Words consist of any string of characters that do not include a space.

# INPUT: string
# OUTPUT: hash

# EXPLICIT:
# 1 - method takes a string argument
# 2 - method returns a hash
# 3 - hash contains key-value pairs where:
#       key = word size
#       value = occurance of that word size in string
# 4 - word is any string of chars that do not include a space

# IMPLICIT:
# 1 - method returns a new hash object

# E - EXAMPLE

# word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
# word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 => 2 }
# word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
# word_sizes('') == {}

# D - DATA STRUCTURE
# Array : to contain word elements
# Hash : to contain word size-occurance pair

# A - ALGORITHM

# 1 - accept string argument
# 2 - convert string into an array of words
# 3 - iterate over array of words
# 4 - for each word, retrieve the length, store that length in a size array
# 5 - after iteration, retrieve all uniq elements in size array, store as key array
# 6 - create empty hash for size-occurance pairs
# 6 - iterate over key array
# 7 - for each element
#     a - count the number of times the element appears in size array
#     b - create key - value pair where element is key, occurance is value in new hash
# 8 - after iterating, return hash

# C - CODE

def word_sizes(str)
  size_arr = str.split(" ").map do |word|
    word.size
  end

  key_arr = size_arr.uniq
  key_arr.each_with_object({}) do |key, hash|
    hash[key] = size_arr.count(key)
  end
end

p word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 => 2 }
p word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
p word_sizes('') == {}
