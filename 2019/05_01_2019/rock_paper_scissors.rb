# Name: Rock, Paper, Scissors
# Difficulty: 8 kyu

# --- sources ---
# Website: CodeWars
# URL: https://www.codewars.com/kata/rock-paper-scissors/train/ruby


# Provided by: Adeel
# Attempted by: Wendy


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
#
    #Compare p1 and p2 and return who won.
    #Scissors win over paper.
    #Paper wins over rock.
    #Rock wins over scissors.
    #If p1 is equal to p2, we shall return Draw!


##################
# RUBY SOLUTIONS #
##################

#**********************#
# Wendy's Attempt 1 #
#**********************#

def rps(p1, p2)
    p1_won = 'Player 1 won!'
  
    if p1 == p2
      return 'Draw!'
    elsif p1 == 'scissors' && p2 == 'paper'
      return p1_won
    elsif p1 == 'paper' && p2 == 'rock'
      return p1_won
    elsif p1 == 'rock' && p2 == 'scissors'
      return p1_won
    else
      return 'Player 2 won!'
    end
end