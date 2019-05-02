# Name: Has a Palindrom Permutation?
# Difficulty:
#
# --- sources ---
# Website:
# URL: https://repl.it/@pmknyc/code-challengepalindrome-fun
#
#
# Attempted by:
# Paula
#
#
##################
#                #
#  Instructions  #
#                #
##################
#
=begin
# Instructions
# Write an efficient function that checks whether any permutation ↴
# A permutation is an ordering of a set of items.
#
# Example: all permutations of 'tom':
#
# tom
# tmo
# omt
# otm
# mto
# mot
# Not to be confused with a combination, which is an unordered set or subset.
#
# of an input string is a palindrome. ↴
# A palindrome is a string that's the same when read forward and backward.
#
# Examples:
#
# civic
# mom
# anna
# kayak
# racecar
#
# You can assume the input string only contains lowercase letters.
#
# Examples:
#
# "civic" should return True
# "ivicc" should return True
# "civil" should return False
# "livci" should return False
# "But 'ivicc' isn't a palindrome!"
#
# If you had this thought, read the question again carefully. We're asking if any permutation of the string is a palindrome. Spend some extra time ensuring you fully understand the question before starting. Jumping in with a flawed understanding of the problem doesn't look good in an interview.
#
# Breakdown
# The brute force ↴ approach would be to check every permutation of the input string to see if it is a palindrome.
#
# What would be the time cost? For a string of length n, there are n!n! permutations (nn choices for the first character, times n-1n−1 choices for the second character, etc). Checking each length-nn permutation to see if it's a palindrome involves checking each character, taking O(n)O(n) time. That gives us O(n!n)O(n!n) time overall. We can do better!
=end
#
##############
# PSEUDOCODE #
##############
#
#



##################
# RUBY SOLUTIONS #
##################

#*******************#
# paula's Attempt 1 #
#*******************#

def has_palindrome_permutation?(the_string)
	#p = the_string.length/2.0
  if the_string.length % 2 == 0 # even string length
    true if the_string.split("").uniq.length == the_string.length/2.0 #.floor
  elsif the_string.length % 2 != 0 # odd string length
    true if the_string.split("").uniq.length != the_string.length/2.0 #.floor
  else
    false
  end
end
