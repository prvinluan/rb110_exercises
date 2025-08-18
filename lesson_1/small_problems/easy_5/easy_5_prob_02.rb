################################################################################
# P - PROBLEM

# The time of day can be represented as the number of minutes before or after
# midnight. If the number of minutes is positive, the time is after midnight.

# If the number of minutes is negative, the time is before midnight.

# Write a method that takes a time using this minute-based format and returns
# the time of day in 24 hour format (hh:mm). Your method should work with any
# integer input.

# You may not use Ruby's Date and Time classes.

# Disregard Daylight Savings and Standard Time and other complications.

# INPUT: integer
# OUTPUT: string

# EXPLICIT:
# 1 - method accepts integer (minute based format)
# 2 - method returns time of day in 24 hour format (hh:mm), string
# 3 - do not use date/time classes
# 4 - disregard daylight saving etc.

# 5 - time is negative, before midnight
#     time is positive, after midnight

# 6 - Integer#divmod, %, Kernel#format may be used

# p (1440 - 4231).divmod(60) #.first % 24
# p sample = (12.divmod(60)) #.first % 24

# p sprintf('%s', 12) # also format('%s', num)

# num = 4
# num_str = sprintf('%s', num)

# p sprintf('%06d : %s', sample.first, sample.last)

# p sprintf('%06d', 87) # => "000100"

# p "0" + num_str if num_str.size == 1
# p num_str.insert(0, "0") if num_str.size == 1

# E - EXAMPLE

# time_of_day(0) == "00:00"
# time_of_day(-3) == "23:57"
# time_of_day(35) == "00:35"
# time_of_day(-1437) == "00:03"
# time_of_day(3000) == "02:00"
# time_of_day(800) == "13:20"
# time_of_day(-4231) == "01:29"

# D - DATA STRUCTURE
# Array - result from #divmod

# A - ALGORITHM

# 1 - accept argument
# 2 - determine if argument is negative or positive
# 3 - if negative:
#     a - get absolute value of number
#     b - get the difference of 1440 and number
#     c - get the quotient and remainder of difference and 60
# 4 - if positive, get the result and remainder of number and 60
# 5 - determine if quotient is larger than 24
# 6 - if true, get the remainder of quotient and 24
# 7 - if false, do nothing
# 8 - convert the two values into a single string
# 9 - return the new string value

# C - CODE

def time_of_day(minutes)
  
  mins = minutes.abs % 1440
  
  # if minutes.negative?
  #   (1440 - mins).divmod(60)
  # else
  #   mins.divmod(60)
  # end

  time_arr = minutes.negative? ? (1440 - mins).divmod(60) : mins.divmod(60)

  sprintf('%02d:%02d', time_arr.first, time_arr.last)

  # previous answer below, #sprintf will always print the num to have the
  # specified length

  # time_arr.map do |num|
  #   num < 10 ? sprintf('%02d', num) : sprintf('%d', num)
  # end.join(":")

end

p time_of_day(0) == "00:00"
p time_of_day(-3) == "23:57"
p time_of_day(35) == "00:35"
p time_of_day(-1437) == "00:03"
p time_of_day(3000) == "02:00"
p time_of_day(800) == "13:20"
p time_of_day(-4231) == "01:29"
