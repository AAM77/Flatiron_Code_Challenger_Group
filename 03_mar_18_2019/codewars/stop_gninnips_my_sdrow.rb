# Name: stop-gninnips-my-sdrow  (stop spinning my words)
# Difficulty: 6 kyu (but much easier than other 6's)
#
# --- sources ---
# Website: CodeWars
# URL: https://www.codewars.com/kata/stop-gninnips-my-sdrow/train/ruby
#
#
# Provided by:
# Adeel
#
# Attempted by:
# 1. Paula
#
##################
#            	#
#  Instructions  #
#            	#
##################
#
# # Write a function that takes in a string of one or more words, and returns the same string, but with all five or more letter words reversed (Just like the name of this Kata). Strings passed in will consist of only letters and spaces. Spaces will be included only when more than one word is present.

##############
# PSEUDOCODE #
##############

# split string at word boundaries/spaces
# array of words
# count the length of each word in array
# words >= 5 letters do string.reversed
# join array back into one string

##################
# RUBY SOLUTIONS #
##################

#**********************#
# Paula's Attempt 1    #
#**********************#

def spinWords(string)
  string.split(" ").map do |word|
	if word.length >=5
  	word.reverse
	else
	word
	end
  end.join(" ")
end


#***********************************#
# other elegant solutions from site #
#***********************************#

# a little Regex!!
def spinWords(string)
  string.gsub(/\w{5,}/, &:reverse)
end


# chaining ruby methods well
def spinWords(string)
  string.split.map{ |s| s.length > 4 && s.reverse! || s }.join(' ')
end





########################
# JAVASCRIPT SOLUTIONS #
########################

#**********************#
# [person's] Attempt 1 #
#**********************#



#******************************#
# [another person's] Attempt 1 #
#******************************#
