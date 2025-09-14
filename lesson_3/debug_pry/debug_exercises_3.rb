# Expected output: [8, 9, 6]
# Actual output: []

require 'pry-byebug'

def select_greater_than_five(numbers)
#  binding.pry
  numbers.select do |num|
    puts num
    num > 5
  end
end

p select_greater_than_five([1, 2, 8, 4, 9, 6])

# #select is used for selection. It iterates and returns
# a new array where each element returns a truthy value.

# The given code returns an empty array, since the last
# line involves printing the value of num using #puts
# which always returns nil and causes each element
# to return a falsy value. To remedy the problem, by
# switching `num > 5` and `puts num`, the new array
# [8, 9, 6] is returned.
