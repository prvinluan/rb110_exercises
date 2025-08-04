################################################################################
# P - PROBLEM

# As we have seen previously we can use some built-in string methods to change
# the case of a string. A notably missing method is something provided in Rails,
# but not in Ruby itself...titleize. This method in Ruby on Rails creates a
# string that has each word capitalized as it would be in a title.

# Write your own version of the Rails titleize implementation.

# INPUT: string
# OUTPUT: string

# EXPLICIT:
# 1 - accept string argument
# 2 - return string object where each first char is capitalized

# IMPLICIT:
# 1 - non mutating method
# 2 - define own method

# E - EXAMPLE

# For example, the string:

# words = "the flintstones rock"

# would be:

# words = "The Flintstones Rock"

# D - DATA STRUCTURE
# Array - to contain string elements

# A - ALGORITHM

# 1 - accept string object
# 2 - convert string into array of string elements
# 3 - iterate over array
# 4 - for each element, mutate element by upcasing first char
# 5 - convert array back to string
# 6 - return string

# C - CODE

words = "the flintstones rock"

def titleize(str)
  str.split(" ").map do |word|
    word.capitalize
  end.join(" ")
end

p titleize(words)

p words
