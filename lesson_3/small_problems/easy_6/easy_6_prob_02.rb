################################################################################
# PROBLEM (EASY 6, # 2):

# P - PROBLEM

# Write a method that takes an array of strings, and returns an array of the
# same string values, except with the vowels (a, e, i, o, u) removed.

# INPUT: array (strings)
# OUTPUT: array (strings, but without vowels)

# EXPLICIT:
# 1 - Write a method that takes an array of strings as an argument
# 2 - Method returns an array of strings where vowels are removed

# IMPLICIT:
# 1 - Method returns a new array

# E - EXAMPLE

# Example:

# remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) == %w(bcdfghjklmnpqrstvwxyz)
# remove_vowels(%w(green YELLOW black white)) == %w(grn YLLW blck wht)
# remove_vowels(%w(ABC AEIOU XYZ)) == ['BC', '', 'XYZ']

# D - DATA STRUCTURE

# Array - argument and return value

# A - ALGORITHM

# 1 - Invoke method, pass an array of strings as argument
# 2 - Create empty array to contain string elements without vowels
# 3 - Iterate over each string element
# 4 - Convert string into an array of chars
# 5 - Iterate over array of chars
# 6 - For each char, determine if char is a vowel
# 7 - If true, remove char
# 8 - If false, keep char
# 9 - Return array of chars without the vowels
# 10 - Convert return array back into a string
# 11 - Place string in new char
# 12 - After iteration, return new array of string elements without vowels

# C - CODE

VOWELS = "AEIOUaeiou"
def remove_vowels(str_arr)
  str_arr.map do |word|
    word.chars.reject do |char|
      VOWELS.include?(char)
    end.join
  end
end

p remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) == %w(bcdfghjklmnpqrstvwxyz)
p remove_vowels(%w(green YELLOW black white)) == %w(grn YLLW blck wht)
p remove_vowels(%w(ABC AEIOU XYZ)) == ['BC', '', 'XYZ']
