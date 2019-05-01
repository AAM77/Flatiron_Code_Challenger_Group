# Name: greetings with First Name AND Last Name
# Difficulty: 7 kyu
#
# --- sources ---
# Web Source: CodeWars
# URL: https://www.codewars.com/kata/greetings-with-first-name-and-last-name/train/ruby
#
#
# Provided by:
# Paula
#
# Attempted by:
# 1. Paula (pre-meeting)
# 2. Adeel
#
#
##################
#                #
#  Instructions  #
#                #
##################
#
# Create a Person class with a greet
# method that returns the first and
# last name of the person with a
# greeting. For example if the first
# name is 'Bob' and the last name is
# 'Smith' then it should return
# 'Hello, Bob Smith!'.
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
# Adeel's Attempt 1 #
#*******************#

class Person

  attr_accessor :first_name, :last_name

  def initialize(first_name, last_name)
    self.first_name = first_name
    self.last_name = last_name
  end

  def greet()
    "Hello, #{self.first_name} #{self.last_name}!"
  end

end # of Class Person





########################
# JAVASCRIPT SOLUTIONS #
########################

#**********************#
# [person's] Attempt 1 #
#**********************#

#**********************#
# [person's] Attempt 2 #
#**********************#

#******************************#
# [another person's] Attempt 1 #
#******************************#

#******************************#
# [another person's] Attempt 2 #
#******************************#
