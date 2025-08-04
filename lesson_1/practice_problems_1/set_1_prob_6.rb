################################################################################
# P - PROBLEM

# What is the return value of the following statement? Why?

['ant', 'bear', 'caterpillar'].pop.size

# => 11

# E - EXAMPLE
# D - DATA STRUCTURE
# A - ALGORITHM
# C - CODE

# On line 1, #pop is called on an array object containing three string elements
# #pop is a mutating method, and removes and returns the last element of the
# array. #size is then called on this return value, and returns an integer value
# that corresponds to the number of chars the string object has.

# The chained method returns 11.
