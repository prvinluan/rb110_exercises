################################################################################
# P - PROBLEM

# How does count treat the block's return value? How can we find out?

['ant', 'bat', 'caterpillar'].count do |str|
  str.length < 4
end

# E - EXAMPLE
# D - DATA STRUCTURE
# A - ALGORITHM
# C - CODE

# By looking up Enumerable#count, we learn that:

#  Enumerable#count - when called on an object, returns the number of elements
#                   - given arguments, returns number of elements that are ==
#                     argument
#                   - given a block, returns number of elements that return
#                     a truthy value from the block

# In the given example, the method call returns 2.
