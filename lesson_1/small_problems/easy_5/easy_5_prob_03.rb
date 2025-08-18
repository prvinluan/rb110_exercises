################################################################################
# P - PROBLEM

# As seen in the previous exercise, the time of day can be represented as the
# number of minutes before or after midnight. If the number of minutes is
# positive, the time is after midnight. If the number of minutes is negative,
# the time is before midnight.

# Write two methods that each take a time of day in 24 hour format, and return
# the number of minutes before and after midnight, respectively. Both methods
# should return a value in the range 0..1439.

# You may not use Ruby's Date and Time methods.

# Yes, we know that 24:00 isn't a valid time in 24-hour format.
# Humor us, though; it makes the problem more interesting.

# Disregard Daylight Savings and Standard Time and other irregularities.

# INPUT: string
# OUTPUT: integer

# EXPLICIT:
# 1 - define two methods, before and after midnight
# 2 - each method accepts string argument, 24 hour format
# 3 - each method returns an integer value in minutes
# 4 - do not use any available Ruby methods
# 5 - disregard time irregularities

# IMPlICIT:
# 1 - integer range should be 0 - 1439, is positive integer

# E - EXAMPLE

# after_midnight('00:00') == 0
# before_midnight('00:00') == 0
# after_midnight('12:34') == 754
# before_midnight('12:34') == 686
# after_midnight('24:00') == 0
# before_midnight('24:00') == 0

# D - DATA STRUCTURE
# A - ALGORITHM

# BEFORE
# 1 - accept string argument
# 2 - remove ":" from the string
# 3 - convert string into an array
# 4 - iterate over array
# 5 - convert each element into an integer
# 6 - take the first element, divide it by 12
# 7 - take the second element and add it to first element
# 8 - subtract the sum from 1440
# 9 - return the difference

# AFTER
# 1 - accept the string argument
# 2 - remove ":" from the string
# 3 - convert string into an array
# 4 - iterate over array
# 5 - convert each element into an integer
# 6 - take the first element, divide it by 12
# 7 - take the second element and add it to first element
# 8 - return the difference

# C - CODE
MINUTES = 60
TOTAL_MIN = 1440

def hours_to_mins(two_four_hour)
  two_four_hour.split(":").map do |num|
    num.to_i
  end
end

def before_midnight(two_four_hour)
  hour_arr = hours_to_mins(two_four_hour)
  if hour_arr.first == 0
    0
  else
    TOTAL_MIN - ((hour_arr.first * MINUTES) + hour_arr.last)
  end
end

def after_midnight(two_four_hour)
  hour_arr = hours_to_mins(two_four_hour)
  if hour_arr.first == 24
    0
  else
    (hour_arr.first * MINUTES) + hour_arr.last
  end
end

p after_midnight('00:00') == 0
p before_midnight('00:00') == 0
p after_midnight('12:34') == 754
p before_midnight('12:34') == 686
p after_midnight('24:00') == 0
p before_midnight('24:00') == 0
