################################################################################
# P - PROBLEM

# You are given a method named spin_me that takes a string as an argument and
# returns a string that contains the same words, but with each word's characters
# reversed. Given the method's implementation, will the returned string be the
# same object as the one passed in as an argument or a different object?

# E - EXAMPLE
# D - DATA STRUCTURE
# A - ALGORITHM
# C - CODE

def spin_me(str)
  p str.object_id
  str.split.each do |word|
    word.reverse!
  end.join(" ")
end

p spin_me("hello world").object_id # "olleh dlrow"

# On line 7, spin_me method is invoked and the string object "hello world" is
# passed as an argument.

# On lines 1 - 5, spin_me method is defined and the string argument "hello world"
# is bound to method parameter str.

# On line 2, #split is called on str and #each is called on the result and passed
# a do..end block where each element is bound to block parameter word.
# On line 3, #reverse! is called on word. #reverse! is a mutating method and mutates
# the object outside the method.
# After #each iterates, it returns the mutated original collection. #join is called
# on this return value and passed the argument of " ". This returns a new string
# object where each element is separated by a " ".

# Although we use a mutating method and the original object is altered, calling #join
# on the return value from #each will create a new string object.

# We can confirm this by calling #object_id on the first line and after the method
# invocation.
