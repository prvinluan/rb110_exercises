###############################################################################
# PROBLEM 1:

# P - PROBLEM
# How would you order this array of number strings by descending numeric value?

# arr = ['10', '11', '9', '7', '8']

# INPUT: arr
# OUTPUT: arr

# EXPLICIT:
# 1 - take array argument
# 2 - return array sorted
# 3 - array sorted by desecnding numeric value

# IMPLICIT:
# 1 - return a new array

# E - EXAMPLE
# D - DATA STRUCTURE
# A - ALGORITHM

# 1 - Accept array argument
# 2 - Iterate over the array
# 3 - For each element, convert to an integer
# 4 - Compare each of the converted integers with each other
# 5 - Sort in descending order
# 6 - Return the new sorted array

# C - CODE

arr = ['10', '11', '9', '7', '8']

sorted = arr.sort do |a, b|
  b.to_i <=> a.to_i
end

puts sorted.inspect # ["11", "10", "9", "8", "7"]
