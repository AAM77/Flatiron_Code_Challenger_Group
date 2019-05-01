# Name: Exes and Ohs
# Difficulty: between 7 kyu and 6 kyu
#
# --- sources ---
# Website: CodeWars
# URL: https://www.codewars.com/kata/exes-and-ohs/train/ruby
#
# Provided by:
# Adeel
#
# Attempted by:
# Paula
#
##################
#                #
#  Instructions  #
#                #
##################
#
# Check to see if a string has the
# same amount of 'x's and 'o's.
# The method must return a boolean
# and be case insensitive. The
# string can contain any char.
#
# Examples input/output:
#
# XO("ooxx") => true
# XO("xooxx") => false
# XO("ooxXm") => true
# XO("zpzpzpp") => true // when no 'x' and 'o' is present should return true
# XO("zzoo") => false

##############
# PSEUDOCODE #
##############
#
# # create empty x array
# create empty o array
# change string into array
# iterate over array of characters
    # (1) downcase each character and
    # (2a) x_array << char if char == 'x' (add to x_array if x)
    # (2b) o_array << char if char == 'o'def XO(str) (add to o_array if o)
# end iteration

# return true if the size of both arrays match
#


##################
# RUBY SOLUTIONS #
##################

#*******************#
# Paula's Attempt 1 #
#*******************#

def XO(string)
	x_array = []
	o_array = []
	string.split("").each do |c|

		char = c.downcase
		x_array << char if char == 'x'
		o_array << char if char == 'o'
	end
	x_array.size == o_array.size ? true : false
end
