require 'pry-byebug'

=begin
Write a method that, when given a string, return an array of all of the characters, case insensitive, that only appear once in the string
=end

def count_letters(string, char)
  string.downcase.count(char.downcase)
end

def single_letters(string)
  singles = []
  string.chars.each do |char|
#  binding.pry
    letter_count = count_letters(string, char)
    if letter_count == 1
      singles << char.downcase
    end
  end
  singles
end

#p single_letters('abc') == ['a', 'b', 'c']
#p single_letters('Hello World') == ['h', 'e', ' ', 'w', 'r', 'd']
p single_letters('Cool cat') == ['l', ' ', 'a', 't']

=begin
Write a method that takes an array of integers and returns a new array with the integers transformed.
If the integer is divisible by 3 it should be replaced with 'Fizz'.
If it's divisible by 5 it should be replaced with 'Buzz'.
If it's divisible by both 3 and 5, it should be replaced by 'FizzBuzz' .
If it's divisible by neither 3 or 5 the number should remain as it is.
=end

# def fizzbuzz(arr)
#   arr.map do |num|
#   binding.pry
#     if num % 5 == 0 && num % 3 == 0
#       'FizzBuzz'
#     elsif num % 5 == 0
#       'Buzz'
#     elsif num % 3 == 0
#       'Fizz'
#     else
#       num
#     end
#   end
# end

# p fizzbuzz([1, 3, 5, 6, 7, 8, 10, 3, 15, 9]) == [1, "Fizz", "Buzz", "Fizz", 7, 8, "Buzz", "Fizz", "FizzBuzz", 9]
# def word_map(sentence)
#   words = sentence.split
#   map = {}
#   words.each do |word|
#    binding.pry
#     if map.key?(word)
#       map[word] +=  1
#     else
#       map[word] = 1
#     end
#   end

#   map
# end

# p word_map('I want what I want') # { "I" => 2, "want" => 2, "what" →> 1 }

# a = 1
# b = 2
# binding.pry
# c = 3

####

# def my_method(num)
#   a = 1
#   binding.pry
#   b = 2
# end

# c = 3

# my_method(c)

####

# def double_num(num)
#   num * 2
# end

# arr = [1, 2, 3].map do |num|
# #  binding.pry
#   double_num(num)
#   binding.pry
# end

# p arr

####

# def double_num(num)
#   num * 2
# end

# arr = []

# [1, 2, 3].each do |num|
#   binding.pry
#   arr << double_num(num)
# end

# p arr
