################################################################################
# P - PROBLEM

# What is the block's return value in the following code? How is it determined?
# Also, what is the return value of any? in this code and what does it output?

[1, 2, 3].any? do |num|
  puts num
  num.odd?
end

# 1
# => true

# E - EXAMPLE
# D - DATA STRUCTURE
# A - ALGORITHM
# C - CODE

# On line 1, #any? is called on an array containing three integer elements, a
# block is passed to it and each element is bound to block parameter 'num'.
# On line 2, 'num' is passed as an argument to #puts and prints the current
# value of 'num'.
# On line 3, #odd? is called on 'num' and returns a boolean value is 'num' is
# odd.

# #any? returns a boolean based on the truthiness of the blocks return value.
# After the program outputs 1, the method stops iteratiing and returns true since
# 1 evaluated as odd, a truthy.
