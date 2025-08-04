################################################################################
# P - PROBLEM

# What is the return value of reject in the following code? Why?

[1, 2, 3].reject do |num|
  puts num
end

# 1
# 2
# 3
# => [1, 2, 3]

# E - EXAMPLE
# D - DATA STRUCTURE
# A - ALGORITHM
# C - CODE

# On line 1, #reject is called on an array object containing three integer
# elements. A do..end block is passed to it and each element is bound to
# block parameter 'num'

# On line 2, 'num' is passed as an argument to #puts where it prints the
# current value of 'num'

# #reject filters thru a collection and returns a new array containing all
# elements that return a falsy value from the block. #puts always returns
# nil, since this is the last evaluated value from the block, the method
# returns [1, 2, 3].
