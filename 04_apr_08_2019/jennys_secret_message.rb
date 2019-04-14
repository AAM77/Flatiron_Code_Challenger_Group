# Name: Jenny's Secret Message
# Difficulty: 8 kyu

# --- sources ---
# Website: CodeWars
# URL: https://www.codewars.com/kata/jennys-secret-message/train/ruby

# Provided by: Adeel
# Attempted by: Michael


##################
#                #
#  Instructions  #
#                #
##################
#
# Jenny has written a function that returns a greeting for a user.
# However, she's in love with Johnny, and would like to greet him slightly different.
# She added a special case to her function, but she made a mistake.
#
# Can you help her?


##################
# RUBY SOLUTIONS #
##################

#*********************#
# Michael's Attempt 1 #
#*********************#

def greet(name)
  if name == "Johnny"
    return "Hello, my love!"
  else
    return "Hello, #{name}!"
  end
end
