################################################################################
# P - PROBLEM

# Given the munsters hash below

munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

# Modify the hash such that each member of the Munster family has an additional
# "age_group" key that has one of three values describing the age group the
# family member is in (kid, adult, or senior). Your solution should produce the
# hash below

# munsters = {
#   "Herman" => { "age" => 32, "gender" => "male", "age_group" => "adult" },
#   "Lily" => {"age" => 30, "gender" => "female", "age_group" => "adult" },
#   "Grandpa" => { "age" => 402, "gender" => "male", "age_group" => "senior" },
#   "Eddie" => { "age" => 10, "gender" => "male", "age_group" => "kid" },
#   "Marilyn" => { "age" => 23, "gender" => "female", "age_group" => "adult" }
# }

# Note: a kid is in the age range 0 - 17, an adult is in the range 18 - 64
# and a senior is aged 65+.

# INPUT: hash
# OUTPUT: hash

# EXPLICIT:
# 1 - mutate the hash argument
# 2 - each key should have an additional key-value pair added to hash value
# 3 - addition key-value should be "age_group" => "kid"/"adult"/"senior"
# 4 - "kid" - age == (0..17)
#     "adult" - age == (18..64)
#     "senior" - age >= 65

# ALGORITHM:

# 1 - iterate over hash
# 2 - for each value, retrieve each family members age
# 3 - if age is between 0 and 17, add key-value pair "age_group" => "kid"
# 4 - if age is between 18 and 64, add key-value pair "age_group" => "adult"
# 5 - if age is 65 and up, add key-value pair "age_group" => "senior"
# 6 - after iteration, return mutated hash

# CODE:

munsters.each do |_, info_hash|
  case info_hash["age"]
  when (0..17)
    info_hash["age_group"] = "kid"
  when (18..64)
    info_hash["age_group"] = "adult"
  else
    info_hash["age_group"] = "senior"
  end
end

puts munsters.inspect
