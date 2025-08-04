################################################################################
# P - PROBLEM

# What does shift do in the following code? How can we find out?

hash = { a: 'ant', b: 'bear' }
hash.shift

# => [:a, 'ant']

# E - EXAMPLE
# D - DATA STRUCTURE
# A - ALGORITHM
# C - CODE

# When we check documentation, we can find #shift under the #Hash class. This
# method removes the first key-value pair from the given hash and returns a
# two-value array where [key, value].

# Given the code snippet, the method returns [:a,'ant'].
