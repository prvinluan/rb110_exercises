################################################################################
# PROBLEM 9:

# P - PROBLEM
# Given this data structure, return a new array of the same structure but with
# the sub arrays being ordered (alphabetically or numerically as appropriate)
# in descending order.


# arr = [['b', 'c', 'a'], [2, 1, 3], ['blue', 'black', 'green']]

# INPUT: array
# OUTPUT: array

# EXPLICIT:
# 1 - accept array argument
# 2 - return array with sub-arrays sorted
# 3 - sub-arrays are sorted in descending/reverse alphabetic order

# E - EXAMPLE
# D - DATA STRUCTURE
# A - ALGORITHM

# 1 - Accept nested array
# 2 - Iterate over array
# 3 - For each sub-array, sort in descending/reverse alphabetic order

# C - CODE

arr = [['b', 'c', 'a'], [2, 1, 3], ['blue', 'black', 'green']]

arr.map do |sub_arr|
  sub_arr.sort do |a, b|
    b <=> a
  end
end

# => [["c", "b", "a"], [3, 2, 1], ["green", "blue", "black"]]
