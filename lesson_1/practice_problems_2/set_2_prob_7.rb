################################################################################
# P - PROBLEM

# Create a hash that expresses the frequency with which each letter occurs in
# this string:

statement = "The Flintstones Rock"

# INPUT: string
# OUTPUT: hash

# EXPLICIT:
# 1 - accept string argument
# 2 - return a hash
# 3 - key-value pairs must be char-number of occurance in string 

# IMPLICIT:
# 1 - returns a new hash
# 2 - spaces are not considered a char

# E - EXAMPLE

# statement = "The Flintstones Rock"

# => { "F"=>1, "R"=>1, "T"=>1, "c"=>1, "e"=>2, ... }

# D - DATA STRUCTURE
# Array - stores uniq chars
# Hash - stores char-instance pairs

# A - ALGORITHM

# 1 - accept string argument
# 2 - remove spaces from chars
# 3 - convert new string into array of chars
# 4 - retrieve unique chars, store in a new array
# 5 - iterate thru unique char array
# 6 - for each element, count instance in string
# 7 - assign key value pair for new hash
# 8 - key is uniq char, value is count
# 9 - return the new hash

# C - CODE

instance_hash = {}
char_arr = statement.delete(" ").chars

char_arr.uniq.each do |char|
  instance_hash[char] = statement.count(char)
end

p instance_hash

# {"T"=>1, "h"=>1, "e"=>2, "F"=>1, "l"=>1, "i"=>1, "n"=>2, "t"=>2, "s"=>2, "o"=>2, "R"=>1, "c"=>1, "k"=>1}
