################################################################################
# P - PROBLEM
# Write a method that takes two Arrays as arguments, and returns an Array that
# contains all of the values from the argument Arrays. There should be no
# duplication of values in the returned Array, even if there are duplicates in
# the original Arrays.

# INPUT: two arrays
# OUTPUT: new array

# EXPLICIT:
# 1 - Write a method that takes two array arguments
# 2 - Method returns an array with all the elements in both arrays
# 3 - Elements should not be ducplicated in the return array

# IMPLICIT:
# 1 - Return a new array
# 2 - * All forms of duplicates should not be included
# 3 - * Elements ordered according to how they are originally written

# QUESTION/S:
# 1 - What if the array also has duplicates?*
# 2 - Does order of elements matter in return array?*

# E - EXAMPLE
# Example

# merge([1, 3, 5], [3, 6, 9]) == [1, 3, 5, 6, 9]
# merge([1, 2, 2, 7], [3, 5, 9]) == [1, 2, 3, 5, 7, 9]

# D - DATA STRUCTURE
# Array - arguments, return value

# A - ALGORITHM

# 1 - Accept two array arguments
# 2 - Combine the two arrays into a single array
# 3 - Remove all duplicate elements
# 4 - Return the new array

# C - CODE

# def merge(arr1, arr2)
#   combined_arr = arr1 + arr2
#   combined_arr.uniq
# end

def merge(arr1, arr2)
  combined_arr = arr1 + arr2

  combined_arr.each_with_object([]) do |element, no_dups|
    no_dups << element unless no_dups.include?(element)
  end
end

p merge([1, 3, 5], [3, 6, 9]) == [1, 3, 5, 6, 9] # true
p merge([1, 2, 2, 7], [3, 5, 9]) == [1, 2, 7, 3, 5, 9] # true
