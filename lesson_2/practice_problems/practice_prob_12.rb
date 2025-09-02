################################################################################
# PROBLEM 12:

# P - PROBLEM
# Given the following data structure, and without using the Array#to_h method,
# write some code that will return a hash where the key is the first item in
# each sub array and the value is the second item.

# arr = [[:a, 1], ['b', 'two'], ['sea', {c: 3}], [{a: 1, b: 2, c: 3, d: 4}, 'D']]

# expected return value:
# {:a=>1, "b"=>"two", "sea"=>{:c=>3}, {:a=>1, :b=>2, :c=>3, :d=>4}=>"D"}

# INPUT: nested array
# OUTPUT: hash

# EXPLICIT:
# 1 - accept nested array argument
# 2 - return a hash
# 3 - hash must contain key-value pairs using the argument
# 4 - keys are first element of sub-array
# 5 - values are second element of sub-array

# IMPLICIT:
# 1 - returns a new hash object

# E - EXAMPLE
# D - DATA STRUCTURE

# A - ALGORITHM

# 1 - Accept the nested array
# 2 - Iterate over the nested array
# 3 - For each sub-array
#     - Retrieve first element
#     - Retrieve second element
# 4 - Create a new empty hash
# 5 - Assign key-value pairs
# 6 - For each key-value pair
#     - Use first element as key
#     - Use second element as value
# 7 - Return the created hash

# C - CODE

arr = [[:a, 1], ['b', 'two'], ['sea', {c: 3}], [{a: 1, b: 2, c: 3, d: 4}, 'D']]

arr.each_with_object({}) do |arr, hash|
  hash[arr.first] = arr.last
end

# => {:a=>1, "b"=>"two", "sea"=>{:c=>3}, {:a=>1, :b=>2, :c=>3, :d=>4}=>"D"}
