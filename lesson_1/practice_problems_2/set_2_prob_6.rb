################################################################################
# P - PROBLEM

# Write code that changes the array below so that all of the names are shortened
# to just the first three characters. Do not create a new array.

flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

# INPUT: array
# OUTPUT: array

# EXPLICIT:
# 1 - return value must contain elements shortened
# 2 - each element should be first three chars of original string

# IMPLICIT:
# 1 - mutate original object

# E - EXAMPLE
# D - DATA STRUCTURE

# A - ALGORITHM

# 1 - iterate thru array
# 2 - for each element, transform each string to first three chars
# 3 - return original object

# C - CODE

flintstones.map! do |name|
  name[0, 3]
end


