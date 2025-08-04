################################################################################
# P - PROBLEM

# Given the array below

# flintstones = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]

# Turn this array into a hash where the names are the keys and the values are
# the positions in the array.

# INPUT: array of strings
# OUTPUT: hash where keys are names and values are indeces

# EXPLICIT:
# 1 - argument is an array
# 2 - return value is a hash
# 3 - hash keys are names in array
# 4 - values are positions of elements

# IMPLICIT:
# 1 - returns a new object
# 2 - positiion is array index
# 3 - use existing ruby methods?
# 4 - create new method using existing methods?

# E - EXAMPLE

# D - DATA STRUCTURE
# Array - argument
# Hash - return value

# A - ALGORITHM

# 1 - accept array argument
# 2 - create empty hash to store name-index pairs
# 3 - iterate over the array
# 4 - retrieve element and index
# 5 - assign key-value pairs
# 6 - after iteration, return created hash

# C - CODE

flintstones = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]

char_hash = {}

flintstones.each_with_index do |char, index|
  char_hash[char] = index
end

puts char_hash.inspect
