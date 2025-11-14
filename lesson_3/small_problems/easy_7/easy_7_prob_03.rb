# PROBLEM (EASY 7, # 3):

# P - PROBLEM

# Write a method that takes a single String argument and returns a new string
# that contains the original value of the argument with the first character of
# every word capitalized and all other letters lowercase.

# You may assume that words are any sequence of non-blank characters.

# INPUT: string
# OUTPUT: string

# EXPLICIT:
# 1 - Method accepts a string argument
# 2 - Method capitalizes every first word in the string, rest downcase
# 3 - Method returns a new string
# 4 - Words are any sequence of non-blank characters

# IMPLICITS:
# 1 - Spaces are ignores " "

# E - EXAMPLE

# Examples

# word_cap('four score and seven') == 'Four Score And Seven'
# word_cap('the javaScript language') == 'The Javascript Language'
# word_cap('this is a "quoted" word') == 'This Is A "quoted" Word'

# D - DATA STRUCTURE

# Array - contain words in the string

# A - ALGORITHM

# 1 - Accept string argument
# 2 - Convert string into an array of words
# 3 - Iterate over the array
# 4 - For each element:
#     4a - upcase the first letter of each word
#     4b - downcase rest of chars
# 5 - After iteration, convert array back into a string
# 6 - Return the string

# C - CODE

def word_cap(str_sequence)
  str_sequence.split.map do |word|
    word.capitalize
  end.join(" ")
end

# def word_cap(str_sequence)
#   str_sequence.split.map do |word|
#     word.chars.map.with_index do |char, idx|
#       idx == 0 ? char.upcase : char.downcase
#     end.join
#   end.join(" ")
# end

p word_cap('four score and seven') == 'Four Score And Seven'
p word_cap('the javaScript language') == 'The Javascript Language'
p word_cap('this is a "quoted" word') == 'This Is A "quoted" Word'
