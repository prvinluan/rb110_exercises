################################################################################
# PROBLEM 7:

# P - PROBLEM
# Given this code, what would be the final values of a and b? Try to work this
# out without running the code.

a = 2
b = [5, 8]
arr = [a, b]

arr[0] += 2
arr[1][0] -= a

# On lines 1 - 2, local variables a and b are initialized with an integer object
# and an array respectively.
# On line 3, local variable arr is initialized with an array containing objects
# that a and b point to.

# On line 5, element reference method is called on arr and passed the argument of
# 0, this returns 2. The result is then reassigned the sum of calling #+ on this
# value and passing it the argument of 2, returning 4.

# a is 2, and arr mutated to [4, [5, 8]].

# On line 6, the chained element reference method returns 5. The result is then
# reassigned the difference of calling #- on the return value and passing it the
# argument of a (which is 2), and returns 3.

# b is [3, 8] and arr is further mutated to [4, [3, 8]]
