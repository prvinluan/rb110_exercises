################################################################################
# P - PROBLEM

# What is the return value of each_with_object in the following code? Why?

['ant', 'bear', 'cat'].each_with_object({}) do |value, hash|
  hash[value[0]] = value
end

# => '{'a' => 'ant', 'b' => 'bear', 'c' => 'cat'}

# E - EXAMPLE
# D - DATA STRUCTURE
# A - ALGORITHM
# C - CODE

# On line 1, #each_with_object is called on an array containing three string
# elements and passed the argument of '{}'. A do..end block is passed to it and
# each element and argument are bound to block parameters 'value' and 'hash'
# respectively.

# On line 2, hash element assignment method is called and passed the arguments
# of the result of calling element reference on 'value' and passing it the
# argument of 0 - returning the first char of the string and 'value'.

# #each_with_object creates a new collection from an existing one. Here,
# the method returns '{'a' => 'ant', 'b' => 'bear', 'c' => 'cat'}
