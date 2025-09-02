################################################################################
# PROBLEM 2:

# P - PROBLEM
# How would you order this array of hashes based on the year of publication of
# each book, from the earliest to the latest?

# books = [
#   {title: 'One Hundred Years of Solitude', author: 'Gabriel Garcia Marquez', published: '1967'},
#   {title: 'The Great Gatsby', author: 'F. Scott Fitzgerald', published: '1925'},
#   {title: 'War and Peace', author: 'Leo Tolstoy', published: '1869'},
#   {title: 'Ulysses', author: 'James Joyce', published: '1922'}
# ]

# INPUT: array
# OUTPUT: array

# EXPLICIT:
# 1 - take array argument
# 2 - return an array with sub-hashes sorted
# 3 - sub-hashes are sorted by year of publication, ascending order

# IMPLICIT:
# 1 - return a new array

# E - EXAMPLE
# D - DATA STRUCTURE

# A - ALGORITHM

# 1 - Accept nested array
# 2 - Sort thru the array
# 3 - Iterate over the sub-hashes
# 4 - Retrieve value of year of publishing key-value pairs
# 5 - Arrange the sub-hashes in ascending order according to year of publication
# 6 - Compare each of the retrieved values
# 7 - Return the array with sub-hashes rearranged

# C - CODE

books = [
  {title: 'One Hundred Years of Solitude', author: 'Gabriel Garcia Marquez', published: '1967'},
  {title: 'The Great Gatsby', author: 'F. Scott Fitzgerald', published: '1925'},
  {title: 'War and Peace', author: 'Leo Tolstoy', published: '1869'},
  {title: 'Ulysses', author: 'James Joyce', published: '1922'}
]

sorted = books.sort_by do |book|
  book[:published]
end

puts sorted.inspect

# => [{:title=>"War and Peace", :author=>"Leo Tolstoy", :published=>"1869"},
# {:title=>"Ulysses", :author=>"James Joyce", :published=>"1922"},
# {:title=>"The Great Gatsby", :author=>"F. Scott Fitzgerald", :published=>"1925"},
# {:title=>"One Hundred Years of Solitude", :author=>"Gabriel Garcia Marquez", :published=>"1967"}]
