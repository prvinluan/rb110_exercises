################################################################################
# PROBLEM 5:

# P - PROBLEM
# Consider this nested Hash:

# munsters = {
#   "Herman" => { "age" => 32, "gender" => "male" },
#   "Lily" => { "age" => 30, "gender" => "female" },
#   "Grandpa" => { "age" => 402, "gender" => "male" },
#   "Eddie" => { "age" => 10, "gender" => "male" },
#   "Marilyn" => { "age" => 23, "gender" => "female"}
# }

# Determine the total age of just the male members of the family.

# INPUT: hash
# OUPUT: integer

# EXPLICIT:
# 1 - accept nested hash
# 2 - return integer sum
# 3 - sum is all ages of male family members

# IMPLICIT:
# 1 - return new integer object

# E - EXAMPLE
# D - DATA STRUCTURE

# A - ALGORITHM

# 1 - Accept nested hash
# 2 - Create total age variable, initialize at 0
# 3 - Iterate over the nested hash
# 4 - Determine if gender is male
# 5 - If true, retrieve age value and add to total age variable
# 6 - If false, next family member
# 7 - After iteration, return total age value

# C - CODE

munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

total_age = 0
munsters.each_value do |value|
  total_age += value["age"] if value["gender"] == "male"
end
puts total_age # 444
