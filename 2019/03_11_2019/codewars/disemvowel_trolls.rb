# Name: Disemvowel Trolls
# Difficulty: 7 kyu
#
# --- sources ---
# Website: CodeWars
# URL: hhttps://www.codewars.com/kata/disemvowel-trolls/train/ruby
#
# Provided by:
# Adeel
#
# Attempted by:
# Isaac
#
##################
#                #
#  Instructions  #
#                #
##################
#
# Trolls are attacking your comment
# section!
#
# A common way to deal with this
# situation is to remove all of the
# vowels from the trolls' comments,
# neutralizing the threat.
#
# Your task is to write a function
# that takes a string and return a new
# string with all vowels removed.
#
# For example, the string "This website
# is for losers LOL!" would become
# "Ths wbst s fr lsrs LL!".
#
# Note: for this kata y isn't
# considered a vowel.

##############
# PSEUDOCODE #
##############
#
# option 1 - iterate through str, remove char if it's a vowel
# option 2 - use .gsub to subst vowels with empty string


##################
# RUBY SOLUTIONS #
##################

#*******************#
# Isaac's Attempt 1 #
#*******************#

def disemvowel(str)
str.gsub(/[aeiouAEIOU]/, "")
end



##################
# RUBY SOLUTIONS #
##################

#*******************#
# Adeel's Attempt 1 #
#*******************#

def disemvowel(str)
  vowels = ['a', 'e', 'i', 'o', 'u', 'A', 'E', 'I', 'O', 'U']
  (str.chars - vowels).join("")
end


#*******************#
# Adeel's Attempt 2 #
#*******************#

def disemvowel(str)
  str.delete('aeiouAEIOU')
end
