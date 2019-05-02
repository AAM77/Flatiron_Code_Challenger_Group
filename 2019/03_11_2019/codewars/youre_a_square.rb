# Name: You're a Square!
# Source: CodeWars
# Difficulty: 7 kyu
#
# URL: https://www.codewars.com/kata/youre-a-square/train/ruby
#
# Attempted by:
# 1. Adeel - 03/11/2019
#
#
##################
#                #
#  Instructions  #
#                #
##################
#
#
# A square of squares
# You like building blocks. You
# especially like building blocks
# that are squares. And what you
# even like more, is to arrange
# them into a square of square
# building blocks!
#
# However, sometimes, you can't
# arrange them into a square.
# Instead, you end up with an
# ordinary rectangle! Those blasted
# things! If you just had a way to
# know, whether you're currently
# working in vain… Wait! That's it!
# You just have to check if your
# number of building blocks is a
# perfect square.
#
# Task
# Given an integral number, determine
# if it's a square number:
#
# In mathematics, a square number or
# perfect square is an integer that
# is the square of an integer; in
# other words, it is the product of
# some integer with itself.
#
# The tests will always use some
# integral number, so don't worry
# about that in dynamic typed
# languages.
#
#

#################
#  PseudoCode:  #
#################

#
# take the sq_rt of x (or raise it to 1/2 power)
# assign this value to a variable (round to nearest integer)
# use modulo to see if there is a remainder when x is divided by the rounded
#

##################
# RUBY SOLUTIONS #
##################

#*******************#
# Adeel's Attempt 1 #
#*******************#

def is_square(x)
  if x < 0
    false
  elsif x == 0
    true
  else
    potential_sq = (x**(0.5))
    x%potential_sq == 0 ? true : false
  end
end
