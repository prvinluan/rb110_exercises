################################################################################
# P - PROBLEM

# Write a method that takes an Array of Integers between 0 and 19, and returns
# an Array of those Integers sorted based on the English words for each number:

# zero, one, two, three, four, five, six, seven, eight, nine, ten, eleven,
# twelve, thirteen, fourteen, fifteen, sixteen, seventeen, eighteen, nineteen

# INPUT: array
# OUTPUT: array

# EXPLICIT:
# 1 - method takes an array argument
# 2 - array argument contains integer elements 0 thru 19
# 3 - method returns an array
# 4 - return array contains integer elements from argument
# 5 - elements are arranged by alphabetical order of integers

# E - EXAMPLE

# alphabetic_number_sort((0..19).to_a) == [
#   8, 18, 11, 15, 5, 4, 14, 9, 19, 1, 7, 17,
#   6, 16, 10, 13, 3, 12, 2, 0
# ]

# D - DATA STRUCTURE
# Hash - to contain number integer-english word pairs
# Array - argument, new array containing sorted elements

# A - ALGORITHM

# 1 - create hash for num integer-english word pairs
# 2 - accept array argument
# 3 - iterate over array
# 4 - for each element
#     a - use element as key to retrive english word value
#     b - store that value in enlgish word array
# 5 - after iteration, sort english word array alphabetically
# 6 - iterate over sorted array
# 7 - transform each element into its key
# 8 - return the array with transformed elements

# C - CODE

ENGLISH = {
  1 => "one",
  2 => "two",
  3 => "three",
  4 => "four",
  5 => "five",
  6 => "six",
  7 => "seven",
  8 => "eight",
  9 => "nine",
  10 => "ten",
  11 => "eleven",
  12 => "twelve",
  13 => "thirteen",
  14 => "fourteen",
  15 => "fifteen",
  16 => "sixteen",
  17 => "seventeen",
  18 => "eighteen",
  19 => "nineteen",
  0 => "zero",
}

def alphabetic_number_sort(num_arr)
  english_arr = num_arr.each_with_object([]) do |num, arr|
    arr << ENGLISH[num]
  end.sort

  english_arr.map do |word|
    ENGLISH.key(word)
  end
end

p alphabetic_number_sort((0..19).to_a) == [8, 18, 11, 15, 5, 4, 14, 9, 19, 1, 7, 17, 6, 16, 10, 13, 3, 12, 2, 0]
