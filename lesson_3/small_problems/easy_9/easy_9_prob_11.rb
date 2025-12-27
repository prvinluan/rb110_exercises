###############################################################################
# PROBLEM (EASY 9, # 11):
# Write a method that returns an Array that contains every other element of an
# Array that is passed in as an argument. The values in the returned list should
# be those values that are in the 1st, 3rd, 5th, and so on elements of the
# argument Array.

# P - PROBLEM
# Given an array, method filters thru array and returns a new array where all
# selected elements have odd numbered positions in the array.

# index + 1 = 1, 3, 5 etc

# INPUT: array
# OUTPUT: none
# RETURN: array
# SIDE EFFECTS: none
# -
# EXPLICIT:
# - Method accepts an array argument
# - Method selects all elements at odd number positions - 1, 3, 5..
# - Method returns a new array with all the selected elements

# IMPLICIT:
# --
# E - EXAMPLE

# Examples:

# oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
# oddities([1, 2, 3, 4, 5, 6]) == [1, 3, 5]
# oddities(['abc', 'def']) == ['abc']
# oddities([123]) == [123]
# oddities([]) == []
# oddities([1, 2, 3, 4, 1]) == [1, 3, 1]

# --
# D - DATA STRUCTURE/TYPES
# Array

# INTERMEDIATE:
# Strings: --
# Numbers: array index + 1
# Boolean: determine if odd number?
# Range: --
# Array:
# Hash:
# --
# A - ALGORITHM
# HIGH LEVEL:
# Initialize an empty array to contain all elements that have odd positions.
# Iterate over the array argument and determine if element is at an odd
# numbered position. If so, place that element in the created array. Return
# new array with all selected elements.

# STEP BY STEP:
# - Accept array argument, 'list'
# - For each 'item' in 'list'
#   - Determine if position is odd?
#   - If so, place in a new array
# - Return the created array

# --
# C - CODE
def oddities(list)
  list.select.with_index do |_, idx|
    (idx + 1).odd?
  end
end

p oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
p oddities([1, 2, 3, 4, 5, 6]) == [1, 3, 5]
p oddities(['abc', 'def']) == ['abc']
p oddities([123]) == [123]
p oddities([]) == []
p oddities([1, 2, 3, 4, 1]) == [1, 3, 1]
