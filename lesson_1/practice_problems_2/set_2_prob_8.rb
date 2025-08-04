################################################################################
# P - PROBLEM
# What happens when we modify an array while we are iterating over it? What
# would be output by this code?

numbers = [1, 2, 3, 4]
numbers.each do |number|
  p number
  numbers.shift(1)
end

# 1
# 3
# => [3, 4]

# What would be output by this code?

numbers = [1, 2, 3, 4]
numbers.each do |number|
  p number
  numbers.pop(1)
end

# 1
# 2
# => [1, 2]

# E - EXAMPLE
# D - DATA STRUCTURE
# A - ALGORITHM
# C - CODE

# Code Snippet 1:

# On line 1, outer scope variable 'numbers' is initialized with an array
# containing four integer elements.

# On line 2, #each is called on 'numbers' and passed a do..end block where
# each element is bound to block parameter 'number'.

# On line 3, 'number' is passed as an argument to #p and prints the current
# value of 'number'.

# On line 4, #shift is called on 'numbers' and passed the argument of 1.
# #shift is a mutating method, it removes and returns the first element of
# the array.

# When index is 0, 'number' is 1
# 1 is printed
# 1 is removed
# 'numbers' is [2, 3, 4]

# When index is 1, 'number' is 3
# 3 is printed
# 2 is removed
# 'numbers' is [3, 4]

# When index is 2, iteration stops
# 'numbers' is [3, 4]

###

# Code Snippet 2:

# On line 1, outer scope variable 'numbers' is initialized with an array
# containing four integer elements.

# On line 2, #each is called on 'numbers' and passed a do..end block where
# each element is bound to block parameter 'number'.

# On line 3, 'number' is passed as an argument to #p and prints the current
# value of 'number'

# On line 4, #pop is called on 'numbers' and passed the argument of 1. #pop
# is mutating and removes and returns the last element in the array.

# When index is 0, 'number' is 1
# 1 is printed
# 4 is removed
# 'numbers' is [1, 2, 3]

# When index is 1, 'number' is 2
# 2 is printed
# 3 is removed
# 'numbers' is [1, 2]

# When index is 2, iteration stops
# 'numbers' is [1, 2]
