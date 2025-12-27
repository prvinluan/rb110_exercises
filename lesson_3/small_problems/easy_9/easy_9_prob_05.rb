###############################################################################
# PROBLEM (EASY 9, # 5):
# Write a method that takes a first name, a space, and a last name passed as a
# single String argument, and returns a string that contains the last name, a
# comma, a space, and the first name.

# P - PROBLEM
# Method takes a string representing a person's name (first and last, separated
# by a comma) and returns a new string where the person's last name comes first,
# separated by a comma.

# INPUT: string
# OUTPUT: none
# RETURN: string
# SIDE EFFECTS: none
# -
# EXPLICIT:
# - Method accepts a string argument
# - String argument represents persons name: 'first last'
# - Method returns a new string
# - Method changes the order of the given string
# - Return string: 'last, first'

# IMPLICIT:

# --
# E - EXAMPLE

# Examples

# swap_name('Joe Roberts') == 'Roberts, Joe'

# --
# D - DATA STRUCTURE/TYPES
# String - 'last, first'

# INTERMEDIATE:
# Strings: substrings from string argument (first and last), ', '
# Numbers: array indices
# Boolean: --
# Range: --
# Array: array of substrings
# Hash: --
# --
# A - ALGORITHM
# HIGH LEVEL:
# Separate the full name into first and last name by creating array containing
# substring names. Reverse the order of the array's elements. Combine the 
# elements into a single string, separated by comma and space string ", ".
# Return the new string.

# STEP BY STEP:
# - Accept the string argument, 'full_name'
# - Convert 'full_name' into an array of substrings, 'name_arr'
# - Reverse the order of 'name_arr'
# - Combine the elements of 'name_arr' into a single string, separated by ", "
# - Return the new string

# --
# C - CODE
def swap_name(full_name)
  full_name.split.reverse.join(", ")
end

p swap_name('Joe Roberts') == 'Roberts, Joe'
