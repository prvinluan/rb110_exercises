###############################################################################
# PROBLEM (EASY 9, # 1):
# Create a method that takes 2 arguments, an array and a hash. The array will
# contain 2 or more elements that, when combined with adjoining spaces, will
# produce a person's name. The hash will contain two keys, :title and :occupation,
# and the appropriate values. Your method should return a greeting that uses the
# person's full name, and mentions the person's title and occupation.


# P - PROBLEM
# Method creates a string message where in the two arguments, elements in array
# values in hash, are interpolated within that string.

# INPUT: array and hash
# OUTPUT: none
# RETURN: string
# SIDE EFFECTS: none
# -
# EXPLICIT:
# - Method accepts two arguments, array and hash
# - Array contains 2 or more elements that represents a person's name
# - Hash has two key-value pairs that represents title and occupation
# - Method creates and returns a greeting message that uses full name and mentions
#   person's title and occupation

# IMPLICIT:
# --
# E - EXAMPLE

# Example:

# greetings(['John', 'Q', 'Doe'], { title: 'Master', occupation: 'Plumber' })
# => "Hello, John Q Doe! Nice to have a Master Plumber around."

# --
# D - DATA STRUCTURE/TYPES
# String - greeting message

# INTERMEDIATE:
# Strings: full name string, greeting message
# Numbers: --
# Boolean: --
# Range: --
# Array: --
# Hash: --

# Full name - combining all elements into a single string
# Details - specific values from a hash

# --
# A - ALGORITHM
# HIGH LEVEL:
# Create the greeting message and interporlate values that would
# correspond to the full name, title and occupation. Return the
# new string.

# STEP BY STEP:
# - Accept two arguments, 'name' (array) and 'job' (hash)
# - "Hello, (full name)! Nice to have a (job title) and (job type) around."
# - Combine all substrings in 'name' into a single string with " " in between.
# - Interpolate full name within the greeting message
# - Retrieve both job title and job type values
# - Interpolate both job title and type withing greeting message
# - Return the new string

# --
# C - CODE

def greetings(name, job)
  full_name = name.join(" ")
  title = job[:title]
  type = job[:occupation]
  "Hello, #{full_name}! Nice to have a #{title} and #{type} around."
end

p greetings(['John', 'Q', 'Doe'], { title: 'Master', occupation: 'Plumber' })
# => "Hello, John Q Doe! Nice to have a Master Plumber around."
