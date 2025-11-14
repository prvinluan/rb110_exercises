###############################################################################
# PROBLEM (EASY 7, # 11):

# P - PROBLEM

# Write a method that counts the number of occurrences of each element in a given array.

# vehicles = [
#   'car', 'car', 'truck', 'car', 'SUV', 'truck',
#   'motorcycle', 'motorcycle', 'car', 'truck'
# ]

# count_occurrences(vehicles)

# The words in the array are case-sensitive: 'suv' != 'SUV'. Once counted, print
# each element alongside the number of occurrences.

# INPUT: array
# OUTPUT: strings

# EXPLICIT:
# 1 - Method accepts an array argument
# 2 - Method determines the unique elements
# 3 - Method counts the occurences of each unique element
# 4 - Method outputs the element and the number of its occurence
# 5 - Words are case sensitive

# E - EXAMPLE

# Expected output:

# car => 4
# truck => 3
# SUV => 1
# motorcycle => 2

# D - DATA STRUCTURE

# Array - argument
# Hash - tally

# A - ALGORITHM

# 1 - Accept array argument
# 2 - Retrieve all unique elements in the array, place in a new array
# 3 - Initialize count_hsh with an empty hash
# 4 - Iterate over the array of unique elements
# 5 - For each element, determine the number of occurence in the argument array
# 6 - Assign a new key-value pair for the hash where unique element => number occurence
# 7 - After iteration, iterate over the new hash
# 8 - Output each key-value pair by interpolating within a string

# C - CODE

def count_occurrences(arr)
  arr.uniq.each_with_object({}) do |vehicle, count_hsh|
    count_hsh[vehicle] = arr.count(vehicle)
  end.each do |type, count|
    puts "#{type} => #{count}"
  end
end

# def count_occurrences(arr)
#   count_hsh = {}

#   arr.uniq.each do |vehicle|
#     count_hsh[vehicle] = arr.count(vehicle)
#   end

#   count_hsh.each do |type, count|
#     puts "#{type} => #{count}"
#   end
# end

vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck'
]

count_occurrences(vehicles)
