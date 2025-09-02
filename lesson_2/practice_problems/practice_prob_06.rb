################################################################################
# PROBLEM 6:

# P - PROBLEM
# One of the most frequently used real-world string properties is that of
# "string substitution", where we take a hard-coded string and modify it with
# various parameters from our program.

# Given this previously seen family hash, print out the name, age and gender
# of each family member:

# munsters = {
#   "Herman" => { "age" => 32, "gender" => "male" },
#   "Lily" => { "age" => 30, "gender" => "female" },
#   "Grandpa" => { "age" => 402, "gender" => "male" },
#   "Eddie" => { "age" => 10, "gender" => "male" },
#   "Marilyn" => { "age" => 23, "gender" => "female"}
# }

# ...like this:

# (Name) is a (age)-year-old (male or female).

# INPUT: hash
# OUTPUT: string

# EXPLICIT:
# 1 - take a nested hash argument
# 2 - output a string
# 3 - string must substitute values for each family member
# 4 - use "(Name) is a (age)-year-old (male or female)."

# E - EXAMPLE
# D - DATA STRUCTURE

# A - ALGORITHM

# 1 - Accept nested hash argument
# 2 - Iterate over the hash
# 3 - For each hash, ouput a string message
#     - name, age and gender must be substituted

# C - CODE

munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

munsters.each do |member, details|
  puts "#{member} is a #{details["age"]}-year-old #{details["gender"]}."
end

# Herman is a 32-year-old male.
# Lily is a 30-year-old female.
# Grandpa is a 402-year-old male.
# Eddie is a 10-year-old male.
# Marilyn is a 23-year-old female.
