################################################################################
# PROBLEM (EASY 6, # 5):

# P - PROBLEM
# Write a method that takes an Array, and returns a new Array with the elements
# of the original list in reverse order. Do not modify the original list.

# You may not use Array#reverse or Array#reverse!, nor may you use the method
# you wrote in the previous exercise.

# INPUT: array
# OUTPUT: new array

# EXPLICIT:
# 1 - Write a method that accepts an array argument
# 2 - Method returns a new array
# 3 - Return array has elements in reversed order
# 4 - Do not modify the original list
# 5 - Do not use Array#reverse or Array#reverse!
# 6 - Do not use previous method/logic

# IMPLICIT:
# 1 - Method returns a new object
# 2 - Create an entirely new solution

# E - EXAMPLE

# Examples:

# p reverse([1, 2, 3, 4]) == [4, 3, 2, 1]         # => true
# p reverse([1, 2, 3, 4, 1]) == [1, 4, 3, 2, 1]   # => true
# p reverse(%w(a b e d c)) == %w(c d e b a)       # => true
# p reverse(['abc']) == ['abc']                   # => true
# p reverse([]) == []                             # => true

# list = [1, 3, 2]                                # => [1, 3, 2]
# new_list = reverse(list)                        # => [2, 3, 1]
# p list.object_id != new_list.object_id          # => true
# p list == [1, 3, 2]                             # => true
# p new_list == [2, 3, 1]                         # => true

# D - DATA STRUCTURE
# Array - argument, index

# A - ALGORITHM

# 1 - Accept array argument
# 2 - Create a new empty array for reversed sequence
# 3 - Iterate over array
# 4 - Place each element in the front of the new array
# 5 - After iteration, return the new array 

# C - CODE

def reverse(arr)
  arr.each_with_object([]) { |element, reversed| reversed.unshift(element) }
end

p reverse([1, 2, 3, 4]) == [4, 3, 2, 1]         # => true
p reverse([1, 2, 3, 4, 1]) == [1, 4, 3, 2, 1]   # => true
p reverse(%w(a b e d c)) == %w(c d e b a)       # => true
p reverse(['abc']) == ['abc']                   # => true
p reverse([]) == []                             # => true

list = [1, 3, 2]                                # => [1, 3, 2]
new_list = reverse(list)                        # => [2, 3, 1]
p list.object_id != new_list.object_id          # => true
p list == [1, 3, 2]                             # => true
p new_list == [2, 3, 1]                         # => true

