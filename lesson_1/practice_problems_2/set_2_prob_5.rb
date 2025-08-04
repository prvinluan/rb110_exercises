################################################################################
# P - PROBLEM

# In the array:

flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

# Find the index of the first name that starts with "Be"

# INPUT: array
# OUPUT: integer

# EXPLICIT:
# 1 - given array argument
# 2 - retrieve index of element that starts with "Be"

# IMPLICIT:
# 1 - first name, as in name or first instance of name (if "Betty" and "Bernice")

# E - EXAMPLE
# D - DATA STRUCTURE
# A - ALGORITHM

# option 1 - string element reference (new string object)
# 1 - accept array argument
# 2 - iterate over array
# 3 - for each element, evaluate if first two chars are of the same value with
#     "Be"
# 4 - if true, return index of element
# 5 - if false, next element
 
# option 2 - #start_with? (boolean)
# 1 - accept array argument
# 2 - iterate over array
# 3 - for each element, determine if first two chars are "Be"
# 4 - if true, return index
# 5 - if false, net element

# C - CODE

# option 1

flintstones.each_with_index do |name, index|
  if name[0, 2] == "Be"
   puts  "#{name} starts with 'Be' and has an index of #{index}"
  end
end

# option 2

flintstones.each_with_index do |name, index|
  if name.start_with?("Be")
    puts "#{name} starts with 'Be' and has an index of #{index}"
  end
end

# Both options use #each_with_index, but utilizes a different method
# to determine if the element starts with the string sequnce "Be".
    
