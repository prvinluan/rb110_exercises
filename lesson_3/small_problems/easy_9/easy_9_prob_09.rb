###############################################################################
# PROBLEM (EASY 9, # 9):
# Given the array...

# words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
#           'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
#           'flow', 'neon']

# Write a program that prints out groups of words that are anagrams. Anagrams
# are words that have the same exact letters in them but in a different order.
# Your output should look something like this:

# ["demo", "dome", "mode"]
# ["neon", "none"]

# P - PROBLEM
# Given an array of words, method groups together all words that are anagrams
# and prints each group in an array.

# INPUT: array of strings
# OUTPUT: yes, each group of anagrams
# RETURN: nil - printing
# SIDE EFFECTS: none
# -
# EXPLICIT:
# - Method accepts an array of strings
# - Elements are an assortment of anagrams
# - Method groups together all words with the same letters
# - Method prints out each group of anagrams

# IMPLICIT:
# --
# E - EXAMPLE

# words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
#           'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
#           'flow', 'neon']

# ["demo", "dome", "mode"]
# ["neon", "none"]
# ...

# --
# D - DATA STRUCTURE/TYPES
# String - print each group of anagram --> ["demo", "dome", "mode"] ..

# INTERMEDIATE:
# Strings: individual chars of each word element
# Numbers: 
# Boolean: if all chars of element are in a specific set of chars (anagram group)
# Range: --
# Array: array of chars for each word element and anagram group
# Hash: anagram set key - array of words value
# --
# A - ALGORITHM
# HIGH LEVEL:
# Determine the sets of anagrams by converting each word into an array of chars then
# taking all unique sets. Using the unique set, create a hash where unique set is a key
# and initialize each with an empty array to contain all words that belong to that
# anagram group.

# Filter through array argument. For each word, find which set of chars the word
# has and place in the corresponding array. Print all values of the hash after.

# STEP BY STEP:
# - Accept array argument, 'word_list'
# - For each 'word' in 'word_list'
#   - convert to an array of chars
#   - sort each array of chars in ascending order
# - Retrieve all unique char sets
# - hsh_anagrm = {}
# - For each 'char_set', create key-value pairs for 'hsh_anagrm'
#   - 'char_set' => []

# - For each key-value pair, 'key_set' and 'word_set' in 'char_set':
#   - Iterate over each 'word' in 'word_list'
#   - Convert 'word' into an array of chars
#   - Arrange the char elements in ascending order
#   - Compare array of chars == 'key_set'
#     - If so, append 'word' to 'word_set'

# --
# C - CODE
def create_sets(word_list)
  hsh_sets = {}

  set_keys = word_list.map { |word| word.chars.sort }.uniq

  set_keys.each { |set| hsh_sets[set] = [] }

  hsh_sets
end

def anagram_sets(word_list)
  hsh_anagrm = create_sets(word_list)

  hsh_anagrm.each do |key_set, word_set|
    word_list.each do |word|
      word_set << word if word.chars.sort == key_set
    end
    p word_set
  end

end

words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
          'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
          'flow', 'neon']

anagram_sets(words)
