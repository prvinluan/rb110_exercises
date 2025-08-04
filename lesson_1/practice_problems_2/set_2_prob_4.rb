################################################################################
# P - PROBLEM

# Pick out the minimum age from our current Munster family hash:

ages = { 
       "Herman" => 32,
       "Lily" => 30,
       "Grandpa" => 5843,
       "Eddie" => 10,
       "Marilyn" => 22,
       "Spot" => 237
       }

# INPUT: hash
# OUTPUT: integer

# EXPLICIT:
# 1 - given hash argument, retrieve the minimum age
# 2 - return an integer

# IMPLICIT:
# 1 - minimum age is youngest
# 2 - use exisiting method? Or define a method?

# E - EXAMPLE
# D - DATA STRUCTURE

# A - ALGORITHM

# option 1 - retrieve hash values, sort, retrieve first element
# 1 - retrieve hash values
# 2 - sort return array
# 3 - retrieve first element

# option 2 - sort hash by values, retrieve first element
# 1 - sort hash using #sort_by, values
# 2 - retrieve last element of first element in nested array (key-pair value)

# C - CODE

# option 1

min = ages.values.sort.first
puts "#{min} is the minimum age, and #{ages.key(min)} is the youngest."

# option 2

min_age = ages.sort_by do |_, age|
  age
end.first.last

puts "#{min_age} is the minimum age, and #{ages.key(min_age)} is the youngest."
