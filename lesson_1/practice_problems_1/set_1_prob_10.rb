################################################################################
# P - PROBLEM

# What is the return value of the following code? Why?

[1, 2, 3].map do |num|
  if num > 1
    puts num
  else
    num
  end
end

# 2
# 3
# => [1, nil, nil]

# E - EXAMPLE
# D - DATA STRUCTURE
# A - ALGORITHM
# C - CODE

# On line 1, #map is called on an array containing three integer elements and it
# is passed a do..end block where each element is bound to block parameter 'num'.

# On line 2-6, an if-else statement evaluates whether the current value of 'num'
# is greater than 1. If true, 'num' is passed as an argument to #puts and prints
# the value of 'num'. It returns nil as #puts always returns nil.

# If it evaluates as false, 'num' is returned.

# After #map iterates it returns a new array [1, nil, nil]. The nil values come
# from #puts on line 3.
