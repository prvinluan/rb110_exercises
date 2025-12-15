################################################################################
# PROBLEM (EASY 8, # 5):
# Write a method that takes two arguments: the first is the starting number,
# and the second is the ending number. Print out all numbers from the starting
# number to the ending number, except if a number is divisible by 3, print "Fizz",
# if a number is divisible by 5, print "Buzz", and finally if a number is
# divisible by 3 and 5, print "FizzBuzz".

# P - PROBLEM
# Method creates a range of numbers using the two integer arguments, start and end
# numbers. Given the range, method prints each number or a corresponding string
# depending on a condition (divisible by 3, 5 or both).

# INPUT: two integers (start, end)
# OUTPUT: number or word string
# RETURN: none
# SIDE EFFECTS: none
# -
# EXPLICIT:
# - Method accepts two integer arguments (start, end)
# - Method prints all values in range:
#   - "Fizz" if divisible by 3
#   - "Buzz" if divisible by 5
#   - "FizzBuzz" if divisible by 3 and 5
#   - else current value

# IMPLICIT:

# --
# E - EXAMPLE

# fizzbuzz(1, 15) # -> 1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11, Fizz, 13, 14, FizzBuzz

# --
# D - DATA STRUCTURE/TYPE
# String

# INTERMEDIATE:
# Strings: "Fizz", "Buzz", "FizzBuzz"
# Numbers: numbers in range
# Boolean: check divisibility for 3, 5 or both
# Range: (start_num..end_num)
# Array: sequence of numbers in range
# Hash: --
# --
# A - ALGORITHM
# HIGH LEVEL:
# Create array of numbers using given range. Iterate over the array of numbers. For each
# number element, check divisibility and transform element into string or remain as number.
# Print all values in the array.

# Create empty array to contain all the numbers and strings. Set range using two arguments, start
# and end. For each number in range, determine divisibility. Append current number value or string
# value based on divisibility to new array. Convert array into a string and print.

# STEP BY STEP:
# - Accept two arguments, 'start_num' and 'end_num'
# - all_nums = []
# - Append all numbers beginning at 'start_num' and
#   ending at 'end_num'

# - Transform each 'n' in 'all_nums'
#   - Divisible by 3, "Fizz"
#   - Divisible by 5, "Buzz"
#   - Divisible by 3 and 5, "FizzBuzz"
#   - else, 'n'
# - Convert all_nums into string
# - Output string

# --
# C - CODE

def num_range(start_num, end_num)
  all_nums = []

  start_num.upto(end_num) do |n|
    all_nums << n
  end

  all_nums
end

def fizzbuzz(start_num, end_num)
  arr = num_range(start_num, end_num).map do |n|
    if n % 3 == 0 && n % 5 == 0
      "FizzBuzz"
    elsif n % 3 == 0
      "Fizz"
    elsif n % 5 == 0
      "Buzz"
    else
      n
    end
  end

  puts arr.join(", ")
end

fizzbuzz(1, 15) # -> 1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11, Fizz, 13, 14, FizzBuzz
