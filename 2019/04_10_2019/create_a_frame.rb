# Name: Create a Frame
# Difficulty: 6 kyu

# --- sources ---
# Website: CodeWars
# URL: https://www.codewars.com/kata/create-a-frame/train/ruby


# Provided by: Paula
# Attempted by: Adeel


##################
#                #
#  Instructions  #
#                #
##################
#
# *************************
# *  Create a frame!      *
# *           __     __   *
# *          /  \~~~/  \  *
# *    ,----(     ..    ) *
# *   /      \__     __/  *
# *  /|         (\  |(    *
# * ^  \  /___\  /\ |     *
# *    |__|   |__|-..     *
# *************************
# Given an array of strings and a character to be used as border, output the frame with the content inside.
#
# Notes:
#
# Always keep a space between the input string and the left and right borders.
# The biggest string inside the array should always fit in the frame.
# The input array is never empty.
# Example
# frame(['Create', 'a', 'frame'], '+')
#
# Output:
#
# ++++++++++
# + Create +
# + a      +
# + frame  +
# ++++++++++




##############
# PSEUDOCODE #
##############
#
# Objective
   # create a frame with:
     # width of longest word + 2 (for spaces)
     # height of # elements in the array + 2 (for the outer borders)

 # PSEUDO
   # create two variables for w & h
   # create top border by replicating the character width # of times
   # iterate through the text and use string interpolation to create each level
   # create bottom border by replicating the character width # of times


##################
# RUBY SOLUTIONS #
##################

#*******************#
# Adeel's Attempt 1 #
#*******************#

def frame(text, char)

  longest_word_length = (text.map { |w| w.length }.max)
  frame_width = longest_word_length + 4

  frame_top_bottom = char*(frame_width)
  frame_arr = []

  #top of frame
  frame_arr.push("#{frame_top_bottom}\n")

  #middle of frame (content and the sides of the frame)
  text.each do |word|
    diff = longest_word_length - word.length
    spaces = ' '*diff
    frame_arr.push("#{char} #{word} #{spaces}#{char}\n")
  end

  #bottom of frame
  frame_arr.push("#{frame_top_bottom}")
  frame_arr.join
end


#*******************#
# Adeel's Attempt 2 #
#*******************#

def frame(text, char)

  longest_word_length = (text.map { |w| w.length }.max)
  frame_width = longest_word_length + 4

  frame_top_bottom = char*(frame_width)
  frame_str = ''

  #frame-top
  frame_str += "#{frame_top_bottom}\n"

  #frame-middle (content and the sides of the frame)
  text.each do |word|
    diff = longest_word_length - word.length
    spaces = ' '*diff
    frame_str += "#{char} #{word} #{spaces}#{char}\n"
  end

  #frame-bottom
  frame_str += "#{frame_top_bottom}"

  #completed frame
  frame_str
end
