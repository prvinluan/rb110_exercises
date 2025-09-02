################################################################################
# PROBLEM 10:

# P - PROBLEM
# Given the following data structure and without modifying the original array,
# use the map method to return a new array identical in structure to the original
# but where the value of each integer is incremented by 1.

# [{a: 1}, {b: 2, c: 3}, {d: 4, e: 5, f: 6}]

# The return value from map should be the following array:

# [{a: 2}, {b: 3, c: 4}, {d: 5, e: 6, f: 7}]

[{a: 1}, {b: 2, c: 3}, {d: 4, e: 5, f: 6}].map do |sub_hash|
  sub_hash.each_with_object({}) do |(key, val), hsh|
    hsh[key] = val + 1
  end
end

# => [{:a=>2}, {:b=>3, :c=>4}, {:d=>5, :e=>6, :f=>7}]
