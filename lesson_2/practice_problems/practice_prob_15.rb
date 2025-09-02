################################################################################
# PROBLEM 15:

# P - PROBLEM
# Given this data structure write some code to return an array which contains
# only the hashes where all the integers are even.

# arr = [{a: [1, 2, 3]}, {b: [2, 4, 6], c: [3, 6], d: [4]}, {e: [8], f: [6, 10]}]

# INPUT: array
# OUTPUT: array

# EXPLICIT:
# 1 - accept nested array argument
# 2 - return an array where the hashes only contain all even integers

# E - EXAMPLE
# D - DATA STRUCTURE

# A - ALGORITHM

# 1 - Accept nested array argument
# 2 - Iterate over the nested array
# 3 - For each sub-hash, determine if all key-value pairs contain all even integer elements
# 4 - Iterate over each key-value pair
# 5 - For each value, determine if all elements are even integers
# 6 - Select the sub-hash that has all its values are even integers
# 7 - Return the array with selected sub-hashes

# C - CODE

arr = [{a: [1, 2, 3]}, {b: [2, 4, 6], c: [3, 6], d: [4]}, {e: [8], f: [6, 10]}]

arr.select do |sub_hash|
  sub_hash.values.all? do |arr|
    arr.all? do |element|
      element.even?
    end
  end
end

# => [{:e=>[8], :f=>[6, 10]}]
