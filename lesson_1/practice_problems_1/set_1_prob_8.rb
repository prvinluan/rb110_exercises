################################################################################
# P - PROBLEM

# How does take work? Is it destructive? How can we find out?

arr = [1, 2, 3, 4, 5]
arr.take(2)

# => [1, 2]
puts arr.inspect # [1, 2, 3, 4, 5]

# E - EXAMPLE
# D - DATA STRUCTURE
# A - ALGORITHM
# C - CODE

# To learn about #take, we can loop up Ruby documentation under 
# Enumerable#take, where #take accepts a positive integer and returns a new
# array containing n number of elements.

# Given the code above, the method returns [1, 2]
