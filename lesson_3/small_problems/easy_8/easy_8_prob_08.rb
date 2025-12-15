################################################################################
# PROBLEM (EASY 8, # 8):
# Write a method that takes one argument, a string, and returns a new string
# with the words in reverse order.

# P - PROBLEM
# Method returns a new string where in the order of words in a given string
# is swapped.

# INPUT: string
# OUTPUT: none
# RETURN: string
# SIDE EFFECTS: none
# -
# EXPLICIT:
# - Method accepts a string argument
# - Method reverses the order of the given string
# - Method returns a new string
# - Return "" if argument is empty or series of spaces

# IMPLICIT:
# --
# E - EXAMPLE

# Examples:

# puts reverse_sentence('Hello World') == 'World Hello'
# puts reverse_sentence('Reverse these words') == 'words these Reverse'
# puts reverse_sentence('') == ''
# puts reverse_sentence('    ') == '' # Any number of spaces results in ''

# --
# D - DATA STRUCTURE/TYPE
# String

# INTERMEDIATE:
# Strings: 
# Numbers: index numbers for each substring element in array, array size
# Boolean: determine if index is mid length of array
# Range: none
# Array: array of substrings
# Hash: none
# --
# A - ALGORITHM
# HIGH LEVEL:
# Convert the string into an array of substrings. Determine if array is empty,
# if so return "". Get size and mid length of the arr. Starting with the first
# and last substring elements in the array, swap each pair incrementing start
# index by 1 and end index by -1. If start index is == to mid length stop.
# Conver the array of substrings into a string. Return the string.

# STEP BY STEP:
# - Accept string argument, 'sentence'
# - Convert 'sentence' into array of substrings
# - Return "" if array is empty
# - start = 0
# - last = -1
# - mid = length of array / 2

# - Enter loop
#   - Swap element at index start with element at index last
#   - Increment start by 1
#   - Decrement last by 1
#   - Exit if start == mid

# HIGHLEVEL:
# Create an empty array to append substrings from string argument. Convert
# argument into an array of substring. Return "" if array is emtpy. Retrieve
# the element starting at index -1. Append to created array. Decrement index by
# 1. Exit loop if size of new array is == size of array of substrings. Convert
# array into a string. Return string.

# STEP BY STEP:
# - Accept string argument, 'sentence'
# - Convert 'sentence' into array of substrings 'arr_words'
# - Return "" if array is empty
# - reversed = []
# - index = -1
# - Enter loop
#   - Retrieve element at index in 'arr_words'
#   - Append to 'reversed'
#   - Exit if array size == array of substrings size
#   - Decrement index by 1
# - Convert array into a string
# - Return string

# --
# C - CODE

# def reverse_sentence(sentence)
#   arr_words = sentence.split
#   return "" if arr_words.empty?

#   reversed = []
#   index = -1

#   loop do
#     reversed << arr_words[index]
#     break if reversed.size == arr_words.size
#     index -= 1
#   end

#   reversed.join(" ")
# end

# def reverse_sentence(sentence)
#   arr_words = sentence.split
#   return "" if arr_words.empty?

#   reversed = []
#   index = -1
#   arr_words.size.times do |_|
#     reversed << arr_words[index]
#     index -= 1
#   end

#   reversed.join(" ")
# end

# def reverse_sentence(sentence)
#   arr_words = sentence.split

#   return "" if arr_words.empty?

#   start = 0
#   last = -1
#   mid = arr_words.size/2

#   loop do
#     arr_words[start], arr_words[last] = arr_words[last], arr_words[start]
#     start += 1
#     last -= 1
#     break if start == mid
#   end

#   arr_words
# end

def reverse_sentence(str)
  str.split.reverse.join(" ")
end

puts reverse_sentence('Hello World') == 'World Hello'
puts reverse_sentence('Reverse these words') == 'words these Reverse'
puts reverse_sentence('') == ''
puts reverse_sentence('    ') == '' # Any number of spaces results in ''
# puts reverse_sentence('What about this sentence')
