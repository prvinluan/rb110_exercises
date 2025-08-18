################################################################################
# P - PROBLEM

# Write a method that takes a string argument and returns a new string that
# contains the value of the original string with all consecutive duplicate
# characters collapsed into a single character. You may not use String#squeeze
# or String#squeeze!.

# INPUT: string
# OUTPUT: string

# EXPLICIT:
# 1 - method takes a string
# 2 - method returns a string
# 3 - return string should not contain consecutive chars from string argument
# 4 - do not use existing Ruby methods: String#squeeze and String#squeeze!

# IMPLCIT:
# 1 - is " " considered a char?

# E - EXAMPLE

# crunch('ddaaiillyy ddoouubbllee') == 'daily double'
# crunch('4444abcabccba') == '4abcabcba'
# crunch('ggggggggggggggg') == 'g'
# crunch('a') == 'a'
# crunch('') == ''

# D - DATA STRUCTURE
# Array - to contain chars from string

# A - ALGORITHM

# 1 - accept string argument
# 2 - create empty string
# 3 - convert string into chars array
# 4 - iterate over the char array
# 5 - for each element:
#     a - determine if current element is the same as next element
#     b - if true, next
#     c - if false, append current element to new string
# 6 - after iteration, return new string

# C - CODE

def crunch(str)
  crunched = ""
  str.chars.each do |char|
    next if crunched.end_with?(char)
    crunched << char
  end
  crunched
end

p crunch('ddaaiillyy ddoouubbllee') == 'daily double'
p crunch('4444abcabccba') == '4abcabcba'
p crunch('ggggggggggggggg') == 'g'
p crunch('a') == 'a'
p crunch('') == ''
