################################################################################
# P - PROBLEM

# What is the return value of map in the following code? Why?

{ a: 'ant', b: 'bear' }.map do |key, value|
  if value.size > 3
    value
  end
end

# => [nil, "bear"]

# E - EXAMPLE
# D - DATA STRUCTURE
# A - ALGORITHM
# C - CODE

# On line 1, #map is called on a hash object containing two key-value pairs
# and a do..end block is passed to it where each key and value are bound to
# block parameters 'key' and 'value'

# On line 2, an if statement evaluates whether or not the result of calling
# #size on the current value of 'value' is greater than 3. If true, 'value'
# is returned and if not, nothing is done so nil is returned.

# #map is used for transformation and when called on a hash, returns an array
# containing values transformed by the block. Here, [nil, 'bear'] is returned.

