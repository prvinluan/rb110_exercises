################################################################################
# P - PROBLEM

# Add up all of the ages from the Munster family hash:

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
# 1 - accept hash
# 2 - return sum (integer)
# 3 - sum of all ages

# IMPLICIT:
# 1 - ages are values
# 2 - define method to accomplish task? use existing methods?

# E - EXAMPLE

# D - DATA STRUCTURE

# A - ALGORITHM

# 1 - retrieve all values in hash
# 2 - add all values
# 3 - return result

# C - CODE


ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }

puts ages.values.sum # 6174

# By simply calling #values on 'ages', an array containing all the 
# age values are returned. #sum is then called on the result which is 6174.

# Using #each can also provide the same result:

age_total = 0

ages.each do |_, age|
  age_total += age
end

puts age_total
