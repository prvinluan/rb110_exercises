################################################################################
# P - PROBLEM
# What is the return value of the select method below? Why?

[1, 2, 3].select do |num|
  num > 5
  'hi'
end

# => [1, 2, 3]

# E - EXAMPLE
# D - DATA STRUCTURE
# A - ALGORITHM
# C - CODE

# On line 1, #select is called on an array object, containing three integer
# elements and a do..end block is passed to it where each element is bound
# to block parameter 'num'

# On line 2, #> is called on 'num' and passed the argument of 5. This expression
# evaluates if the current value of 'num' is greater than 5 and returns a
# boolean value.

# On line 3, "hi" is the last expression evaluated by the block and returns it.

# After iteration, the method returns the array '[1, 2, 3]'.

# #select method iterates and filters thru a collection. It returns a new array
# where each element returns a truthy value from the block. Since everything in
# Ruby is truthy, except for false and nil - "hi" causes the method to select
# every element in the array and return it.
