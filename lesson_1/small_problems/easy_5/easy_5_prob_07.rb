################################################################################
# P - PROBLEM

# Modify the word_sizes method from the previous exercise to exclude non-letters
# when determining word size. For instance, the length of "it's" is 3, not 4.

# INPUT: string
# OUTPUT: hash

# EXPLICIT:
# 1 - using the previous method, change method to exclude non-alphabetical chars
#     in size count

# E - EXAMPLE

# word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 2 }
# word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 3 }
# word_sizes("What's up doc?") == { 5 => 1, 2 => 1, 3 => 1 }
# word_sizes('') == {}

# D - DATA STRUCTURE
# Array - to contain word array, key array
# Hash - to contain size-occurance pairs

# A - ALGORITHM

# 1 - accept string argument
# 2 - remove all non-alpha chars from string
# 3 - convert new string into an array of words
# 4 - iterate over array of words
# 5 - for each element, retrieve the word size, store value in size array
# 6 - retrieve all unique elements from size array, store as key array
# 7 - create new hash to store size-occurance pairs
# 8 - for each key element:
#     a - create key-values
#     b - use key element as key
#     c - retrieve number of occurance key element appears in size array
# 9 - return new hash

# C - CODE

def word_sizes(str)
  size_arr = str.delete("^A-Za-z ").split(" ").map do |word|
    word.size
  end

  key_arr = size_arr.uniq
  key_arr.each_with_object({}) do |key, hash|
    hash[key] = size_arr.count(key)
  end
end

p word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 2 }
p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 3 }
p word_sizes("What's up doc?") == { 5 => 1, 2 => 1, 3 => 1 }
p word_sizes('') == {}
