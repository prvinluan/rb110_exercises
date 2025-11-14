# PROBLEM (EASY 7, # 7):

# P - PROBLEM

# Write a method that takes an Array of integers as input, multiplies all the
# numbers together, divides the result by the number of entries in the Array,
# and then prints the result rounded to 3 decimal places. Assume the array
# is non-empty.

# INPUT: array
# OUTPUT: string

# EXPLICIT:
# 1 - Method accepts array argument
# 2 - Method multiplies all elements together
# 3 - Method divides product by array size
# 4 - Method returns a string that represents the quotient rounded to 3 decimal
#     places
# 5 - Assume array is non-empty

# E - EXAMPLE

# Examples:

# show_multiplicative_average([3, 5])                # => The result is 7.500
# show_multiplicative_average([6])                   # => The result is 6.000
# show_multiplicative_average([2, 5, 7, 11, 13, 17]) # => The result is 28361.667

# D - DATA STRUCTURE
# Array - argument

# A - ALGORITHM

# 1 - Accept array argument
# 2 - Iterate over the array
# 3 - Multiply each element with each other
# 4 - Conver the product into a float
# 5 - Retrieve the argument array's size
# 6 - Divide the float by the size
# 7 - Round the result to three decimal places
# 8 - Interpolate the result within a string message
# 9 - Return the string

# C - CODE

def show_multiplicative_average(arr_num)
  "The result is #{format('%.3f', arr_num.inject(:*).to_f / arr_num.size)}"
end

show_multiplicative_average([3, 5])                # => The result is 7.500
show_multiplicative_average([6])                   # => The result is 6.000
show_multiplicative_average([2, 5, 7, 11, 13, 17]) # => The result is 28361.667
