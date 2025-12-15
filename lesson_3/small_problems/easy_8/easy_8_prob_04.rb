################################################################################
# PROBLEM (EASY 8, # 4):
# Write a method that returns a list of all substrings of a string that are palindromic.
# That is, each substring must consist of the same sequence of characters forwards
# as it does backwards. The return value should be arranged in the same sequence
# as the substrings appear in the string. Duplicate palindromes should be included
# multiple times.

# You may (and should) use the substrings method you wrote in the previous exercise.

# For the purposes of this exercise, you should consider all characters and pay
# attention to case; that is, "AbcbA" is a palindrome, but neither "Abcba" nor
# "Abc-bA" are. In addition, assume that single characters are not palindromes.

# P - PROBLEM
# Method creates a list of all substrings from a given string argument and returns
# all substrings that are palindromes in a new list.

# Palindrome - same sequence of characters forwards as it is backwards ("abba")

# INPUT: string
# OUTPUT: none
# RETURN: array of substrings
# SIDE EFFECTS: none
# -
# EXPLICIT:
# - Method accepts a string argument
# - Method filters thru a all substrings from given argument that are palindromes
# - Method returns all palindromatic substrings in an array
# - Order of substrings in array is same as substrings appearance in the string
# - If there are no palindromes, must return []
# - Duplicate substrings must be included
# - Use #substrings from previous exercise

# IMPLICIT:
# - Use #leading)substrings from previous exercise

# --
# E - EXAMPLE

# Examples:

# palindromes('abcd') == []
# palindromes('madam') == ['madam', 'ada']
# palindromes('hello-madam-did-madam-goodbye') == [
#   'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
#   'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
#   '-madam-', 'madam', 'ada', 'oo'
# ]
# palindromes('knitting cassettes') == [
#   'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
# ]

# 'madam'
# [['madam', 'adam', 'dam', 'am', 'm']
# ['m', 'ma', 'mad', 'mada', 'madam']
# ['a', 'ad', 'ada', 'adam']
# ['d', 'da', 'dam']
# ['a', 'am']
# ['m']]
# ['madam', 'adam', 'dam', 'am', 'm',
# 'm', 'ma', 'mad', 'mada', 'madam',
# 'a', 'ad', 'ada', 'adam',
# 'd', 'da', 'dam',
# 'a', 'am',
# 'm']
# => ['madam', 'ada']

# --
# D - DATA STRUCTURE/TYPES
# Array - new array of palindrome substrings

# INTERMEDIATE:
# Strings: "" to create substring
# Numbers: --
# Boolean: determine if substring is a palindrome
# Range: --
# Array: array of substrings
# Hash: --

# --
# A - ALGORITHM
# HIGH LEVEL:
# Create all substrings from the given string argument. Place substrings
# in a new array. For each substring element in the array, create all substrings
# and place in a new array. Result is a nested array of subarrays containing
# substrings. Convert nested array into a single array. Filter thru all the subtrings
# and determine which ones are palindromes. Place all substrings that are
# palindromes in a new array. Return that array.

# STEP BY STEP:
# - Accept the string argument, 'str'
# - Create all substrings from 'str'
#   - substrings(str)
#   - leading_substrings(str)
# - 'all_substrs' = created substrings
# - Filter thru 'all_substrs'
#   - For each element, 'substr' determine if string is palindrome
#   - If so, place in a new array
# - Return the array of palindromes

# --
# C - CODE

def leading_substrings(str)
  arr_substr = []
  substr = ""

  str.each_char do |letter|
    substr += letter
    arr_substr << substr
  end
  
  arr_substr
end

def substrings(str)
  str_length = str.size
  substrs = []
  
  str_length.times do |n|
    substrs << str[n, str_length]
    str_length -= 1
  end
  
  substrs.each_with_object([]) do |sub_string, sub_sets|
    sub_sets << leading_substrings(sub_string)
  end.flatten
end

def palindromes(str)
  substrings(str).select do |substr|
    next if substr.size == 1
    substr == substr.reverse
  end
end


p palindromes('abcd') == []
p palindromes('madam') == ['madam', 'ada']
p palindromes('hello-madam-did-madam-goodbye') == [
  'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
  'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
  '-madam-', 'madam', 'ada', 'oo'
]
p palindromes('knitting cassettes') == [
  'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
]
