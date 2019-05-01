# Name: Are you playing a banjo
# Difficulty: 8 kyu

# --- sources ---
# Website: CodeWars
# URL: https://www.codewars.com/kata/are-you-playing-banjo/train/ruby


# Provided by: Adeel
# Attempted by: Michael


##################
#                #
#  Instructions  #
#                #
##################
#
# Create a function which answers the question "Are you playing banjo?".
# If your name starts with the letter "R" or lower case "r", you are playing banjo!
#
# The function takes a name as its only argument, and returns one of the following strings:
#
# name + " plays banjo"
# name + " does not play banjo"
# Names given are always valid strings.
#



##############
# PSEUDOCODE #
##############
#
#return users with name beginning with R "plays banjo"
#Everyone else "does not play banjo"


##################
# RUBY SOLUTIONS #
##################

#**********************#
# Michael's Attempt 1 #
#**********************#

def are_you_playing_banjo(name)
  if name.start_with?(/r/i)
      "#{name} plays banjo"
  else
      "#{name} does not play banjo"
  end
end
