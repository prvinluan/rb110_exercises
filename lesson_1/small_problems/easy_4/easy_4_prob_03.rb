################################################################################
# P - PROBLEM

# Write a method that takes a year as input and returns the century. The return
# value should be a string that begins with the century number, and ends with st,
# nd, rd, or th as appropriate for that number.

# New centuries begin in years that end with 01. So, the years 1901-2000 comprise
# the 20th century.

# INPUT: integer
# OUTPUT: string

# EXPLICIT:
# 1 - method accepts integer argument
# 2 - returns a string object where:
#     A - begins with century number
#     B - ends with corresponding ordinal suffix

# IMPLICIT:

# 1 - returns a new string object
# 2 - things to keep in mind in regards to centuries:

  # ORDINAL SUFFIX:
  #   1 : st
  #   2 : nd
  #   3 : rd
  #   0, 4 - 9 : th

  # DEFINING A CENTURY?:  
  # A century is 100 years
  # Starts at 1, ends in 00

  # DETERMINE WHAT CENTURY:
  # If year is divisible 100, then it is the last year of that century
  # ex: 2000 - 19th century

  # If year isn't divisible by 100, then round to the nearest whole number
  # ex: 2003/100 = 20.3, 21st century

  # p 2000/100.to_i

  # CALCULATE A CENTURY:
  # If it is a four digit year (such as 2023), we add 1 to the first two digits
  # (20 + 1 = 21st century) to find out the century it belongs to.
  # Similarly, if it is a three digit year such as 302, we add 1 to the first
  # digit only (3 + 1 = 4th century)

  # Note: Please note that if a year ends with "00," like 800, 900, and 1900,
  # you do not add 1 to the first or first two digits. 800, 900 and 1900 simply
  # belong to the 8th, 9th and 19th centuries respectively.

# E - EXAMPLE

# century(2000) == '20th'
# century(2001) == '21st'
# century(1965) == '20th'
# century(256) == '3rd'
# century(5) == '1st'
# century(10103) == '102nd'
# century(1052) == '11th'
# century(1127) == '12th'
# century(11201) == '113th'

# D - DATA STRUCTURE
# Array - store number char sequence
# Hash - ordinal suffix pairs
#      - string char/integer pairs

# A - ALGORITHM

# 1 - create ordinal hash
# 2 - accept year as integer argument
# 3 - calculate qoutient of integer and 100
# 4 - calculate the remainder of integer and modulus 100
# 5 - if remainder is zero, do not add 1
# 6 - if remainder is not zero, add 1
# 7 - convert quotient into a string
# 8 - count the length of the string
# 9 - if count is less than two, using element as key,
#     retrieve value from ordinal hash
# 10 - if count is two or more, retrieve last two elements
# 11 - if two elements equals 11, 12, 13 then add "th" as ordinal suffix
# 12 - if not, using element as key, retrieve value from ordinal hash
# 13 - append value to array of chars
# 14 - convert array back to string
# 15 - return string value

# C - CODE

def integer_year(year)
  quotient_year = year/100
  year % 100 == 0 ? quotient_year : quotient_year += 1
end

def ordinal_suffix(int_year)
  ordinal = {
    "1" => "st",
    "2" => "nd",
    "3" => "rd",
    "4" => "th",
    "5" => "th",
    "6" => "th",
    "7" => "th",
    "8" => "th",
    "9" => "th",
    "0" => "th"
  }

  arr_years = int_year.to_s

  if arr_years.size == 1
    arr_years << ordinal[arr_years]
  else
    two_digits = arr_years[-2, 2]
    case two_digits 
    when "11"
      then arr_years << "th"
    when "12"
      then arr_years << "th"
    when "13"
      then arr_years << "th"
    else
      arr_years << ordinal[two_digits[-1]]
    end
  end
  arr_years
end

def century(year)
  # ordinal_suffix(int_year) - creates string in year with suffix
  # integer_year(year) - converts year to century  
  ordinal_suffix(integer_year(year))

end

p century(2000) == '20th'
p century(2001) == '21st'
p century(1965) == '20th'
p century(256) == '3rd'
p century(5) == '1st'
p century(10103) == '102nd'
p century(1052) == '11th'
p century(1127) == '12th'
p century(11201) == '113th'
