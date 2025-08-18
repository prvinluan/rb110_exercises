################################################################################
# P - PROBLEM

# Given a string that consists of some words (all lowercased) and an assortment
# of non-alphabetic characters, write a method that returns that string with
# all of the non-alphabetic characters replaced by spaces.

# If one or more non-alphabetic characters occur in a row, you should only have
# one space in the result (the result should never have consecutive spaces).

# INPUT: string
# OUTPUT: string

# EXPLICIT:
# 1 - method accepts string argument
# 2 - method returns a string object
# 3 - return value must not contain any non-alphabetic chars from the argument
# 4 - non-alphabetic chars are replaced by " "
# 5 - there should be no consecutive " "s

# IMPLICIT:
# 1 - method returns a new array

# E - EXAMPLE

# cleanup("---what's my +*& line?") == ' what s my line '

# D - DATA STRUCTURE
# Array - to contain chars

# A - ALGORITHM

# 1 - accept string argument
# 2 - initialize a variable with empty string
# 3 - convert string to char array
# 4 - iterate thru char array
# 5 - determine if char is alphabetic
# 6 - if true, append char to array
# 7 - if false, check if last char in string is " "
# 8 - if true, next
# 9 - if false, append " " to string
# 10 - return new string

# C - CODE

def cleanup(str)
  clean_str = ""
  str.chars.each do |char|
    if /[a-z]/.match?(char)
      clean_str += char
    else
      next if clean_str.end_with?(" ")
      clean_str += " "
    end
  end
  clean_str
end

p cleanup("---what's my +*& line?") == ' what s my line '

# p /[a-z ]/.match?("a")
