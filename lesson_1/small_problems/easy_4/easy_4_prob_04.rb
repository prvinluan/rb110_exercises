################################################################################
# P - PROBLEM

# A continuation of the previous exercise.

# The British Empire adopted the Gregorian Calendar in 1752, which was a leap
# year. Prior to 1752, the Julian Calendar was used. Under the Julian Calendar,
# leap years occur in any year that is evenly divisible by 4.

# Using this information, update the method from the previous exercise to
# determine leap years both before and after 1752.

# INPUT: integer
# OUTPUT: boolean

# EXPLICIT:
# 1 - update the previous method
# 2 - previous method uses Gregorian
# 3 - Gregorian (1752 onwards)
# 4 - Julian (pre 1752) considers leap year to be year divisible by 4, otherwise, not

# E - EXAMPLE

# leap_year?(2016) == true
# leap_year?(2015) == false
# leap_year?(2100) == false
# leap_year?(2400) == true
# leap_year?(240000) == true
# leap_year?(240001) == false
# leap_year?(2000) == true
# leap_year?(1900) == false
# leap_year?(1752) == true
# leap_year?(1700) == true
# leap_year?(1) == false
# leap_year?(100) == true
# leap_year?(400) == true

# D - DATA STRUCTURE

# A - ALGORITHM

# 1 - accept integer argument
# 2 - is integer equal or greater than 1752?
# 3 - if true, use gregorian calendar
# 4 - if false, check if year is divisible by 4
#     a - if true, return true
#     b - if false, return false


# C - CODE

def onwards_1752(year)
  year % 400 == 0 || (year % 4 == 0 && year % 100 != 0)
end

def pre_1752(year)
  year % 4 == 0
end

def leap_year?(year)
  year >= 1752 ?  onwards_1752(year) : pre_1752(year)
end

p leap_year?(2016) == true
p leap_year?(2015) == false
p leap_year?(2100) == false
p leap_year?(2400) == true
p leap_year?(240000) == true
p leap_year?(240001) == false
p leap_year?(2000) == true
p leap_year?(1900) == false
p leap_year?(1752) == true
p leap_year?(1700) == true
p leap_year?(1) == false
p leap_year?(100) == true
p leap_year?(400) == true
