################################################################################
# P - PROBLEM

# In the ages hash:

# ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }

# remove people with age 100 and greater.

# INPUT: hash
# OUTPUT: hash

# EXPLICIT:
# 1 - remove key-value pairs where values are 100 or greater
# 2 - return the original hash without the removed pairs

# IMPLICIT:
# 1 - use destructive method to remove
# 2 - ages 100 and up are removed

# E - EXAMPLE
# D - DATA STRUCTURE

# A - ALGORITHM

# 1 - iterate over the hash
# 2 - retrieve age
# 3 - evaluate if age is 100 or greater
# 4 - if true, delete pair from hash
# 5 - if false, do nothing
# 6 - return original hash

# C - CODE

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }

ages.delete_if do |name, age|
  age >= 100
end

puts ages.inspect

# Using Hash#delete_if filters thru the collection and removes all
# key-value pairs that return true from the block.
