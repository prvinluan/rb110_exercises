###############################################################################
# PROBLEM (EASY 7, # 1):

# P - PROBLEM

# Write a method that combines two Arrays passed in as arguments, and returns a
# new Array that contains all elements from both Array arguments, with the
# elements taken in alternation.

# You may assume that both input Arrays are non-empty, and that they have the
# same number of elements.

# INPUT: two arrays
# OUTPUT: array

# EXPLICIT:
# 1 - Method accepts two array arguments
# 2 - Method returns a new array
# 3 - Return array is composed of all of the elements in both arrays alternated
# 4 - Assume both arrays are non-empty
# 5 - Assume both arrays have the same number of elements

# E - EXAMPLE

# Example:

# interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']

# D - DATA STRUCTURE

# Array - arguments and return value

# A - ALGORITHM

# 1 - Accept two array arguments
# 2 - Initialize interleaved variable with empty array
# 3 - Iterate over the first array
# 4 - For each element append to interleaved
# 5 - Retrieve element from second array with the same index as element
# 6 - Append element to interleaved
# 7 - After iteration, return interleaved

# C - CODE

def interleave(arr1, arr2)
  interleaved = []
  arr1.each_with_index do |element, idx|
    interleaved << element
    interleaved << arr2[idx]
  end
  interleaved
end

p interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']
