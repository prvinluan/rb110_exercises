# Expected output: [6, 9, 6]
# Actual output: [6, 15, 21]
require 'pry-byebug'

def sum_rows(arr)
  row_sums = []
  arr.each do |row|
#    binding.pry
    current_sum = 0
    row.each do |num|
      current_sum += num
    end
  row_sums << current_sum
  end
  row_sums
end

p sum_rows([[1, 2, 3], [4, 5], [6]])

# The result is from current_sum not being reset
# back to zero after each element. Instead, each
# sum is incremented until all elements have been
# iterated on.

# To fix the code, `current_sum = 0` is placed
# inside the block after the #each invocation.

# Output should now be [6, 9, 6]
