# Name: stop-gninnips-my-sdrow
# Difficulty: 6 kyu

# Website: CodeWars
# URL: https://www.codewars.com/kata/stop-gninnips-my-sdrow/train/ruby

# Attempted by: Paula

# Feedback:
# Comment 1 by
#

# Comment 2 by
#

##################
#                #
#  Instructions  #
#                #
##################
#
#
# Write a function that takes in a string of one or more words, and returns the same string, but with all five or more letter words reversed (Just like the name of this Kata). Strings passed in will consist of only letters and spaces. Spaces will be included only when more than one word is present.
#
#
# Examples:
#
# spinWords( "Hey fellow warriors" ) => returns "Hey wollef sroirraw"
# spinWords( "This is a test") => returns "This is a test"
# spinWords( "This is another test" )=> returns "This is rehtona test"

##################
# RUBY SOLUTIONS #
##################

#*******************#
# Paula's Attempt 1 #
#*******************#

def spinWords(string)
  string.split(" ").map do |word|
    if word.length >= 5
      word.reverse
    else
      word
    end
  end.join(" ")
end
