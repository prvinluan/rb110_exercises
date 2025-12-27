###############################################################################
# PROBLEM (EASY 9, # 8):
# Write a method which takes a grocery list (array) of fruits with quantities
# and converts it into an array of the correct number of each fruit.

# P - PROBLEM
# Given a nested array where each subarray is composed of a string and a integer,
# method multiplies the number of strings in the subarray with the integer. Method
# returns a one dimensional array.

# INPUT: nested array
# OUTPUT: none
# RETURN: array
# SIDE EFFECTS: none
# -
# EXPLICIT:
# - Method accepts a nested array argument
# - Subarray contains a string and an integer element
# - Method multiplies the number of string elements by the integer argument
# - Method returns a one dimensional array

# IMPLICIT:
# --
# E - EXAMPLE

# Example:

# buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) ==
#   ["apples", "apples", "apples", "orange", "bananas","bananas"]

# Given
# [["apples", 3], ["orange", 1], ["bananas", 2]]

# [["apples", "apples", "apples"],
#  ["orange"],
#  ["bananas", "bananas"]]

# ["apples", "apples", "apples", "orange", "bananas","bananas"]

# --
# D - DATA STRUCTURE/TYPES
# Array

# INTERMEDIATE:
# Strings: subarray string element
# Numbers: subarray integer element
# Boolean: --
# Range: --
# Array: empty array to contain each transformed subarray
# Hash: --

# --
# A - ALGORITHM
# HIGH LEVEL:
# Transform each subarray element into an array of strings. For each subarray,
# create an empty array to contain sequence of strings. Append string element
# to empty array as many times as the integer element. Place each transformed
# array in a new array. Flatten the nested array, and return that array.

# STEP BY STEP:
# - Accept nested array, 'fruit_quantity'
# - all_fruits = []
# - Transform each 'fruit_type' subarray
#   - fruits = []
#   - Append first element of 'fruit_type' to 'fruits'
#   - Repeat as many times as second element of 'fruit_type'
#   - Place 'fruits' in 'all_fruits'
# - Flatten 'all_fruits'
# - Retrun 'all_fruits'

# --
# C - CODE

def buy_fruit(fruit_quantity)
  all_fruits = []

  fruit_quantity.each do |fruit_type|
    fruits = []
    fruit_type[1].times { fruits << fruit_type[0]}
    all_fruits << fruits
  end

  all_fruits
end

def buy_fruit(fruit_quantity)
  fruit_quantity.map do |fruit_type|
    fruits = []
    fruit_type[1].times { fruits << fruit_type[0] }
    fruits
  end.flatten
end

p buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) ==
["apples", "apples", "apples", "orange", "bananas","bananas"]
