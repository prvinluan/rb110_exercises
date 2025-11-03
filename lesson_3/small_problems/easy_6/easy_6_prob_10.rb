################################################################################
# PROBLEM (EASY 6, # 10):

# What will the following code print, and why?
# Don't run the code until you have tried to answer.

array1 = %w(Moe Larry Curly Shemp Harpo Chico Groucho Zeppo)
array2 = []
array1.each { |value| array2 << value }
# => ["Moe", "Larry", "Curly", "Shemp", "Harpo", "Chico", "Groucho", "Zeppor"]
array1.each { |value| value.upcase! if value.start_with?('C', 'S') }
# => ["Moe", "Larry", "CURLY", "SHEMP", "Harpo", "CHICO", "Groucho", "Zeppor"]
puts array2

# Moe
# Larry
# CURLY
# SHEMP
# Harpo
# CHICO
# Groucho
# Zeppor

# On lines 1 and 2, local variables array1 and array2 are initialized with an
# an array and an empty array respectively.

# On line 3, #each is called on array1 and passed a block using `{}`. Each element
# of the array is bound to block parameter value. Inside the block #<< is called on
# array2 and passed the argument of value. #<< is mutating and alters array2. Each
# of the element in array1 is appended to array2 resulting to ["Moe", "Larry",
# "Curly", "Shemp", "Harpo", "Chico", "Groucho", "Zeppor"]. #each returns the original
# object array1.

# On line 4, #each is called on array1 and passed a block using `{}`. Each element
# in the array is bound to block parameter `value`. Inside the block, an if statement
# evaluates if the expression `value.start_with?('C', 'S')` is true, #start_with?
# returns a boolean based on whether or not the first char of the string starts with
# the given argument 'C' or 'S'. If so, #upcase! is called on value and alters the
# element to having all it's chars upcased. If false nothing is done. #upcase! is
# a destructive method and alters the string object inside the array. After
# iteration, array1 will have the value 
# ["Moe", "Larry", "CURLY", "SHEMP", "Harpo", "CHICO", "Groucho", "Zeppor"].
# #each returns the original calling collection, which now has been mutated -
# ["Moe", "Larry", "CURLY", "SHEMP", "Harpo", "CHICO", "Groucho", "Zeppor"].

# On line 5, array2 is passed as an argument to #puts and prints out each element
# on a new line.

# Moe
# Larry
# CURLY
# SHEMP
# Harpo
# CHICO
# Groucho
# Zeppor

# When we appended the elements from array1 to array2, those elements are shared by
# both array1 and array2. They point to the same objects. Since certain elements
# are mutated in array1, arr2 will also have the same mutated elements as seen on line 5.
