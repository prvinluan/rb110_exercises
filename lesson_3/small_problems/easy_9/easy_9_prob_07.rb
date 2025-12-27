###############################################################################
# PROBLEM (EASY 9, # 7):
# Write a method that determines the mean (average) of the three scores passed to
# it, and returns the letter value associated with that grade.

# Numerical Score Letter	Grade
# 90 <= score <= 100	'A'
# 80 <= score < 90	'B'
# 70 <= score < 80	'C'
# 60 <= score < 70	'D'
# 0 <= score < 60	'F'

# Tested values are all between 0 and 100. There is no need to check for negative
# values or values greater than 100.

# P - PROBLEM
# Given three integer arguments, method calculates the average of the three
# scores and returns the corresponding letter grade.

# INPUT: three integer arguments
# OUTPUT: none
# RETURN: string char
# SIDE EFFECTS: none
# -
# EXPLICIT:
# - Method accepts three integer arguments
# - Integer arguments represent numerical grade between 0 and 100
# - No need to check for negative values or values greater than 100
# - Method calculates the mean (average) of the three grades
# - Method returns a single char, representing letter equivalent of the grade

# IMPLICIT:

# --
# E - EXAMPLE

# Example:

# get_grade(95, 90, 93) == "A"
# get_grade(50, 50, 95) == "D"

# --
# D - DATA STRUCTURE/TYPES
# String - letter grade

# INTERMEDIATE:
# Strings: letter grade char
# Numbers: average score, number of scores (divisor)
# Boolean: grade average within range?
# Range: numerical grades equivalent of letter grade (0 - 60) = "F"
# Array: --
# Hash: grading system where letter grade key - numerical grade range value

# --
# A - ALGORITHM
# HIGH LEVEL:
# Get the average of the three numerical scores. Using the grade average,
# determine which range averge belongs to. Return the letter corresponding
# to that range.

# STEP BY STEP:

# - Create 'LETTER_GRADE' hash:
#   - "F" => (0..59)
#   - "D" => (60..69)
#   - "C" => (70..79)
#   - "B" => (80..89)
#   - "A" => (90..100)

# - Accept three integer arguments, 'grade1', 'grade2' and 'grade3'
# - ave_score = 'grade1' + 'grade2' + 'grade3' / 3

# - For each 'letter' and 'range' (key-value) in 'LETTER_GRADE':
#   - Determine if 'ave_score' is in 'range'
#     - If so, return value of 'letter'

# Numerical Score Letter	Grade
# 90 <= score <= 100	'A'
# 80 <= score < 90	'B'
# 70 <= score < 80	'C'
# 60 <= score < 70	'D'
# 0 <= score < 60	'F'

# --
# C - CODE

LETTER_GRADE = { "A" => (90..100),
                 "B" => (80..89),
                 "C" => (70..79),
                 "D" => (60..69),
                 "F" => (0..59) }

def grade_letter(ave_score)
  LETTER_GRADE.each do |letter, range|
    return letter if range.include?(ave_score)
  end
end

def get_grade(grade1, grade2, grade3)
  ave_score = (grade1 + grade2 + grade3) / 3

  grade_letter(ave_score)
end

p get_grade(95, 90, 93) == "A"
p get_grade(50, 50, 95) == "D"
