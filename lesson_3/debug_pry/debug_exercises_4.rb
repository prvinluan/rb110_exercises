# Expected output: ["The apple is a fruit and is red.", "The banana is a fruit and is yellow."]
# Actual output: NoMethodError: undefined method `[]' for nil:NilClass

require 'pry-byebug'

def fruit_descriptions(list)
  descriptions = []
#  binding.pry
  list.each do |item|
    descriptions << "The #{item['name']} is a #{item['type']} and is #{item['color']}."
  end
  descriptions
end

fruits = [
      {'name' => 'apple', 'type' => 'fruit', 'color' => 'red'},
      {'name' => 'banana', 'type' => 'fruit', 'color' => 'yellow'}
]

p fruit_descriptions(fruits)

# In this code, we are interpolating values from the various hash keys within each sub-hash
# in the nested array argument. However, as #each iterates and the block retrieves each
# value to be interpolated, a nil is returned for each hash key.

# Instead of the symbol hash key, we should be using a string key which should retrieve
# the correct value and return the result we want which is ["The apple is a fruit and is red.", "The banana is a fruit and is yellow."]
