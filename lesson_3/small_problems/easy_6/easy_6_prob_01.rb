################################################################################
# PROBLEM (EASY 6, # 1):
# Write a method that takes a floating point number that represents an angle
# between 0 and 360 degrees and returns a String that represents that angle in
# degrees, minutes and seconds.

# You should use a degree symbol (°) to represent degrees, a single quote (')
# to represent minutes, and a double quote (") to represent seconds. A degree
# has 60 minutes, while a minute has 60 seconds.

# Note: You can use the following constant to represent the degree symbol:

# DEGREE = "\u00B0"

# Note: your results may differ slightly depending on how you round values,
# but should be within a second or two of the results shown.

# You should use two digit numbers with leading zeros when formatting the
# minutes and seconds, e.g., 321°03'07".

# INPUT: float (represents angle between 0-360 degrees)
# OUTPUT: string (represents angle in degrees, minutes and seconds)

# EXPLICIT:
# 1 - Write a method that takes a float argument and returns a string value
# 2 - Float argument is angle between 0 and 360
# 3 - String output is angle in degrees, minutes and seconds
# 4 - Terms:
#     a - degree (°), a complete circle is 360°
#     b - minutes ('), a degree has 60 minutes
#     c - seconds ("), a minute has 60 seconds
# 5 - Use constant DEGREE to represent degree symbol
# 6 - Use two digit numbers with leading zeros to format minutes and seconds

# How to calculate degrees, minutes and seconds
# 1 - The whole units of degrees will remain the same
#     (e.g., if your figure is 121.135 degrees longitude, start with 121 degrees).
# 2 - Multiply the decimal portion of the figure by 60 (e.g., .135 * 60 = 8.1).
# 3 - The whole number becomes the minutes (8).
# 4 - Take the remaining decimal and multiply it by 60 (e.g., .1 * 60 = 6).
# 5 - The resulting number becomes the seconds (6 seconds).
# 6 - Seconds can remain as a decimal if needed.
# 7 - Take your three sets of numbers and put them together,
#     (e.g., 121°8'6" longitude would be equivalent to 121.135 degrees longitude).

# IMPLICIT:
# 1 - Method returns a new string

# E - EXAMPLE

# Examples:

# All test cases should return true
# puts dms(30) == %(30°00'00")
# puts dms(76.73) == %(76°43'48")
# puts dms(254.6) == %(254°36'00")
# puts dms(93.034773) == %(93°02'05")
# puts dms(0) == %(0°00'00")
# puts dms(360) == %(360°00'00") || dms(360) == %(0°00'00")

# D - DATA STRUCTURE

# Array - contain each integer that represents degree, minutes
#         and seconds

# A - ALGORITHM

# 1 - Invoke method, pass float as argument
# 2 - Create empty array to contain the degrees, minutes and seconds
# 3 - Take whole number of float, place in array
# 4 - Take decimal, multiply by 60
# 5 - Is array size 3?
# 6 - If true, proceed to #7, if false go to #3
# 7 - Interpolate each element in array into a string
# 8 - Return string

# C - CODE

DEGREE = "\u00B0"

def int_set(float_arg)
  dms_arr = []
  float = float_arg
  3.times do |_|
    whole, decimal = float.divmod(1)
    dms_arr << whole
    float = decimal * 60
  end
  dms_arr
end

def str_set(int_arr)
  int_arr.map.with_index do |num, idx|
    str_num = num.to_s
    if idx != 0 && str_num.size == 1
      "%02d" % str_num
    else
      str_num
    end
  end
end

def dms_str(str_arr)
  "#{str_arr[0]}#{DEGREE}#{str_arr[1]}\'#{str_arr[2]}\""
end

def dms(float_arg)
  int_arr = int_set(float_arg)
  str_arr = str_set(int_arr)
  dms_str(str_arr)
end

puts dms(30) == %(30°00'00")
puts dms(76.73) == %(76°43'48")
puts dms(254.6) == %(254°36'00")
puts dms(93.034773) == %(93°02'05")
puts dms(0) == %(0°00'00")
puts dms(360) == %(360°00'00") || dms(360) == %(0°00'00")
