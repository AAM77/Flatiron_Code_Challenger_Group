# Name: Square Every Digit
# Difficulty: 7 kyu
#
# --- sources ---
# Website:  CodeWars
# URL: https://www.codewars.com/kata/square-every-digit/train/ruby
#
# Provided by:
# Adeel
#
# Attempted by:
# Alwina
#
##################
#                #
#  Instructions  #
#                #
##################
#
# Welcome. In this kata, you are asked to square every digit of a number.
#
# For example, if we run 9119 through the function, 811181 will come out, because 92 is 81 and 12 is 1.
#
# Note: The function accepts an integer and returns an integer
# Sample tests:
# ```Test.assert_equals(square_digits(3212), 9414)
# Test.assert_equals(square_digits(2112), 4114)
# Test.assert_equals(square_digits(1111), 1111)
# Test.assert_equals(square_digits(1234321), 14916941)
# Test.assert_equals(square_digits(0), 0)```

##############
# PSEUDOCODE #
##############
#
# set a variable equal to the array of integers, convert the integers to strings and split them
# map over each characater in the string to convert into an integer
# then square the integer
# call .join.to_i on the resulting string
# Note: cannot call to_i on an array of strings only on a string

##################
# RUBY SOLUTIONS #
##################

#**********************#
# Alwina's Attempt 1   #
#**********************#

def square_digits(num)

  number = num.to_s.split("")

  number.map do |n|
  n.to_i**2
  end.join.to_i

end
