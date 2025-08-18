################################################################################
# P - PROBLEM

# Given a string of words separated by spaces, write a method that takes this
# string of words and returns a string in which the first and last letters of
# every word are swapped.

# You may assume that every word contains at least one letter, and that the
# string will always contain at least one word. You may also assume that each
# string contains nothing but words and spaces.

# INPUT: string
# OUTPUT: string

# EXPLICIT:
# 1 - method accepts string argument
# 2 - method returns a new string
# 3 - return value must have each word's first and last letter swapped
# 4 - every word is atleast one letter
# 5 - string argument will atleast be one word
# 6 - string argument only contains words and spaces

# E - EXAMPLE

# swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
# swap('Abcde') == 'ebcdA'
# swap('a') == 'a'

# D - DATA STRUCTURE
# Array - to contain word elements

# A - ALGORITHM

# 1 - accept string argument
# 2 - convert string into array of words
# 3 - iterate over the array of words
# 4 - for each element, swap first and last letters
# 5 - after iteration, combine array into a string
# 6 - return the new string

# C - CODE

def swap(str)
  str.split(" ").map do |word|
    word[0], word[-1] = word[-1], word[0]
    word
  end.join(" ")
end

p swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
p swap('Abcde') == 'ebcdA'
p swap('a') == 'a'
