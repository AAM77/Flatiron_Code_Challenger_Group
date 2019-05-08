# Name: Rock, Paper, Scissors
# Difficulty: 8 kyu

# --- sources ---
# Website: CodeWars
# URL: https://www.codewars.com/kata/rock-paper-scissors/train/ruby


# Provided by: Adeel
# Attempted by: Michael


##################
#                #
#  Instructions  #
#                #
##################
#
# Let's play! You have to return which player won! In case of a draw return Draw!.
#



##############
# PSEUDOCODE #
##############



##################
# RUBY SOLUTIONS #
##################

#**********************#
# Michael's Attempt 1 #
#**********************#

def rps(p1, p2)
  if p1 == 'rock'&& p2 == 'scissors' ||  p1 == 'scissors'&& p2 == 'paper' || p1 == 'paper'&& p2 == 'rock'
       "Player 1 won!"
  elsif  p1 == p2
         "Draw!"
  else
    'Player 2 won!'
   end
end
