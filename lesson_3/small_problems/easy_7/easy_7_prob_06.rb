###############################################################################
# PROBLEM (EASY 7, # 6):

# P - PROBLEM

# Modify the method from the previous exercise so it ignores non-alphabetic
# characters when determining whether it should uppercase or lowercase each
# letter. The non-alphabetic characters should still be included in the return
# value; they just don't count when toggling the desired case.

# INPUT: string
# OUTPUT: string

# EXPLICIT:
# 1 - Method accepts string argument
# 2 - Method uses staggered capitalization scheme
# 3 - Method returns a new string
# 4 - Non-alphabetic chars should be included in new string
# 5 - Non-alphabetic chars are ignored between switching cases

# E - EXAMPLE

# Example:

# staggered_case('I Love Launch School!') == 'I lOvE lAuNcH sChOoL!'
# staggered_case('ALL CAPS') == 'AlL cApS'
# staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'

# D - DATA STRUCTURE

# Array - contains chars, iterated on

# A - ALGORITHM

# 1 - Accept string argument
# 2 - Convert string into an array of characters
# 3 - Initialize switch variable to true
# 4 - Iterate over the array
# 5 - For each element, determine if element is non-alpha
# 6 - If true, go to next element
# 7 - If false, determine if switch is true
# 8 - If true, upcase the element
# 9 - If false, downcase the element
# 10 - Reassign switch to false
# 11 - Continue until each element is iterated on
# 12 - After iteration, convert array back into a string
# 13 - Return the string

# C - CODE

def staggered_case(str_seq)
  switch = true
  staggered = ""

  str_seq.chars.each do |char|
    if char.match(/[^A-Za-z]/)
      staggered << char
      next 
    elsif switch
      staggered << char.upcase
    else
      staggered << char.downcase
    end 
    switch = !switch
  end

  staggered
end

p staggered_case('ALL CAPS') == 'AlL cApS'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'
