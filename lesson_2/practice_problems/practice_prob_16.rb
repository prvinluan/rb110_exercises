################################################################################
# PROBLEM 16:

# P - PROBLEM
# A UUID is a type of identifier often used as a way to uniquely identify
# items...which may not all be created by the same system. That is, without any
# form of synchronization, two or more separate computer systems can create new
# items and label them with a UUID with no significant chance of stepping on
# each other's toes.

# It accomplishes this feat through massive randomization. The number of
# possible UUID values is approximately 3.4 X 10E38.

# Each UUID consists of 32 hexadecimal characters, and is typically broken
# into 5 sections like this 8-4-4-4-12 and represented as a string.

# It looks like this: "f65c57f6-a6aa-17a8-faa1-a67f2dc9fa91"

# Write a method that returns one UUID when called with no parameters.

# INPUT: none
# OUTPUT: string

# EXPLICIT:
# 1 - create a method with no parameters
# 2 - method returns a string
# 3 - string represents UUID
# 4 - string is composed of 16 hexadecimal chars (0-9, a-f)
# 5 - string has 32 hexadecimal chars
# 6 - each string must follow patter 8-4-4-4-12

# IMPLICIT:
# 1 - return value is a new string object

# QUESTIONS:

# 1 - What is UUID?
# 2 - What are hexadecimal chars?

# E - EXAMPLE
# D - DATA STRUCTURE
# Array - to contain hexadecimal chars
#       - possibly a random chars generated

# A - ALGORITHM

# 1 - Create array containing hexadecimal chars
# 2 - Create array containing 8-4-4-4-12 pattern
# 3 - Create empty array for generated chars sets
# 4 - Iterate over pattern array
# 5 - For each num element, generate num number of chars using hex arr
# 6 - Store generated chars in an array, return the array
# 7 - Append char array in generated char array
# 8 - After iteration, combine all the arrays inserting "-" between each
# 9 - Return the created string

# C - CODE

HEXDEC = %w(0 1 2 3 4 5 6 7 8 9 a b c d e f)
PATTERN = [8, 4, 4, 4, 12]

# def uuid_generator
#   sequence = []
#   PATTERN.each do |num|
#     counter = 0
#     generated = []
#     until counter == num
#       generated << HEXDEC.sample
#       counter += 1
#     end
#     sequence << generated.join
#   end
#   sequence.join("-")
# end

# def uuid_generator
#   sequence = []
#   PATTERN.each do |length|
#     generated = []
#     loop do
#       generated << HEXDEC.sample
#       break if generated.size == length
#     end
#     sequence << generated.join
#   end
#   sequence.join("-")
# end

# def uuid_generator
#   PATTERN.each_with_object([]) do |length, arr|
#     generated = ""
#     loop do
#       generated << HEXDEC.sample
#       break if generated.size == length
#     end
#     arr << generated
#   end.join("-")
# end

def uuid_generator
  PATTERN.map do |length|
    sequence = ""
    length.times do |_|
      sequence << HEXDEC.sample
    end
    sequence
  end.join("-")
end

p uuid_generator
