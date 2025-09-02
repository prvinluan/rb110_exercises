################################################################################
# PROBLEM 14:

# P - PROBLEM
# Given this data structure write some code to return an array containing the
# colors of the fruits, and the sizes of the vegetables. The sizes should be
# uppercase and the colors should be capitalized.

# hsh = {
#   'grape' => {type: 'fruit', colors: ['red', 'green'], size: 'small'},
#   'carrot' => {type: 'vegetable', colors: ['orange'], size: 'medium'},
#   'apple' => {type: 'fruit', colors: ['red', 'green'], size: 'medium'},
#   'apricot' => {type: 'fruit', colors: ['orange'], size: 'medium'},
#   'marrow' => {type: 'vegetable', colors: ['green'], size: 'large'},
# }

# The return value should look like this:
# [["Red", "Green"], "MEDIUM", ["Red", "Green"], ["Orange"], "LARGE"]

# INPUT: hash
# OUTPUT: array

# EXPLICIT:
# 1 - accept nested hash argument
# 2 - return an array
# 3 - array must contain hash values that are fruit colors and vegetable sizes
# 4 - colors must be capitalized, sizes must be upper cased

# IMPLICIT:
# 1 - return a new array object

# E - EXAMPLE
# D - DATA STRUCTURE

# A - ALGORITHM

# 1 - Accept nested hash
# 2 - Create an empty array, to store retrieved values
# 3 - Iterate over the nested hash
# 4 - For each sub-hash, determine if produce is fruit or vegetable
# 5 - If fruit:
#     - Retrieve color string value
#     - Capitalize string value
#     - Append transformed value in new array
# 6 - If vegetable:
#     - Retrieve size string value
#     - Upcase string value
#     - Append transformed value in new array
# 7 - Return the created array

# C - CODE

hsh = {
  'grape' => {type: 'fruit', colors: ['red', 'green'], size: 'small'},
  'carrot' => {type: 'vegetable', colors: ['orange'], size: 'medium'},
  'apple' => {type: 'fruit', colors: ['red', 'green'], size: 'medium'},
  'apricot' => {type: 'fruit', colors: ['orange'], size: 'medium'},
  'marrow' => {type: 'vegetable', colors: ['green'], size: 'large'},
}

# hsh.each_with_object([]) do |(_, details), arr|
#   arr << details[:colors].map { |color| color.capitalize } if details[:type] == 'fruit'
#   arr << details[:size].upcase if details[:type] == 'vegetable'
# end

# => [["Red", "Green"], "MEDIUM", ["Red", "Green"], ["Orange"], "LARGE"]

# idiomatic map method

hsh.map do |_, val|
    if val[:type] == 'fruit'
      val[:colors].map { |color| color.capitalize }
    elsif val[:type] == 'vegetable'
      val[:size].upcase
    end
end

# => [["Red", "Green"], "MEDIUM", ["Red", "Green"], ["Orange"], "LARGE"]
