################################################################################
# PROBLEM (EASY 6, # 4):

# P - PROBLEM

# Write a method that takes an Array as an argument, and reverses its elements
# in place; that is, mutate the Array passed into this method.

# The return value should be the same Array object.

# You may not use Array#reverse or Array#reverse!.

# INPUT: array
# OUTPUT: array (elements reversed)

# EXPLICIT:
# 1 - Write a method that accepts an array as an argument
# 2 - Method must return the same array with it's elements reversed
# 3 - Method is mutating
# 4 - Array#reverse and Array#reverse! is not allowed

# IMPLICIT:
# 1 - Only the elements place must be reversed, not the elements
#     elements (sub-collection, string)
# 2 - Placement only concerns index, and not any other value (ASCII, numerical etc)

# E - EXAMPLE

# Examples:

# list = [1, 2, 3, 4]
# result = reverse!(list)
# p result == [4, 3, 2, 1] # true
# p list == [4, 3, 2, 1] # true
# p list.object_id == result.object_id # true

# list = [1, 2, 3, 4, 1]
# result = reverse!(list)
# p result == [1, 4, 3, 2, 1] # true
# p list == [1, 4, 3, 2, 1] # true
# p list.object_id == result.object_id # true

# list = %w(a b e d c)
# p reverse!(list) == ["c", "d", "e", "b", "a"] # true
# p list == ["c", "d", "e", "b", "a"] # true

# list = ['abc']
# p reverse!(list) == ["abc"] # true
# p list == ["abc"] # true

# list = []
# p reverse!(list) == [] # true
# p list == [] # true

# Note: for the test case list = ['abc'], we want to reverse the elements in
# the array. The array only has one element, a String, but we're not
# reversing the String itself, so the reverse! method call should return ['abc'].

# D - DATA STRUCTURE

# Array - argument/mutated object

# A - ALGORITHM

# 1 - Accept array argument
# 2 - Check if array argument is empty
#     2a - If true, return the array
#     2b - If false, continue to #3
# 3 - Initialize head variable with 0
# 4 - Initialize tail variable with -1
# 5 - Enter a loop
# 6 - Reassign element at index head with element at index tail
# 7 - Reassign element at index tail with element at index head
# 8 - Check if head variable is less than value of array size divided by 2
# 9 - If true, increment head by 1, decrement tail by 1
# 10 - Continue to # 5
# 11 - If false, exit loop and return the array

# C - CODE

def reverse!(arr)
  head = 0
  tail = -1

  while head < arr.size / 2
    arr[head], arr[tail] = arr[tail], arr[head]
    head += 1
    tail -= 1
  end

  arr
end

list = [1, 2, 3, 4]
result = reverse!(list)
p result == [4, 3, 2, 1] # true
p list == [4, 3, 2, 1] # true
p list.object_id == result.object_id # true

list = [1, 2, 3, 4, 1]
result = reverse!(list)
p result == [1, 4, 3, 2, 1] # true
p list == [1, 4, 3, 2, 1] # true
p list.object_id == result.object_id # true

list = %w(a b e d c)
p reverse!(list) == ["c", "d", "e", "b", "a"] # true
p list == ["c", "d", "e", "b", "a"] # true

list = ['abc']
p reverse!(list) == ["abc"] # true
p list == ["abc"] # true

list = []
p reverse!(list) == [] # true
p list == [] # true
