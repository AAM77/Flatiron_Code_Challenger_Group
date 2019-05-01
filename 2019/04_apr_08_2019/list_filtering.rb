# Name: List Filtering
# Difficulty: 7 kyu

# --- sources ---
# Website: CodeWars
# URL: https://www.codewars.com/kata/list-filtering/train/ruby

# Provided by: Adeel
# Attempted by: Michael


##################
#                #
#  Instructions  #
#                #
##################
#
# In this kata you will create a function that takes a list of non-negative integers and strings and returns a new list with the strings filtered out.
#
# Example
# filter_list([1,2,'a','b']) == [1,2]
# filter_list([1,'a','b',0,15]) == [1,0,15]
# filter_list([1,2,'aasf','1','123',123]) == [1,2,123]



##################
# RUBY SOLUTIONS #
##################

#*********************#
# Michael's Attempt 1 #
#*********************#

l.select{|i| i.is_a?(Integer)}
