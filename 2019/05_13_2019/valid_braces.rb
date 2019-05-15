# Name: Reverse or Rotate?
# Difficulty: 6 kyu

# --- sources ---
# Website: CodeWars
# URL: https://www.codewars.com/kata/valid-braces/train/ruby


# Provided by: Adeel & Paula
# Attempted by:Adeel & Paula (Collaborative effort)


##################
#                #
#  Instructions  #
#                #
##################
#
# Write a function that takes a string of braces, and determines if the order of the braces is valid. It should return true if the string is valid, and false if it's invalid.

# This Kata is similar to the Valid Parentheses Kata, but introduces new characters: brackets [], and curly braces {}. Thanks to @arnedag for the idea!
#
# All input strings will be nonempty, and will only consist of parentheses, brackets and curly braces: ()[]{}.
#
# What is considered Valid?
# A string of braces is considered valid if all braces are matched with the correct brace.
#
# Examples
# "(){}[]"   =>  True
# "([{}])"   =>  True
# "(}"       =>  False
# "[(])"     =>  False
# "[({})](]" =>  False




##############
# PSEUDOCODE #
##############



##################
# RUBY SOLUTIONS #
##################

#***********#
# Attempt 1 #
#***********#
# (05-13-2019)

def validBraces(braces)
  # TODO
  braces_array = braces.split('')
  #
end
# [
# "[{()}]"
#  012345
#
#  splice_out from index 1 to index 4
#  "{()}"
#
#  splice_out from index 1 to index 2
#  "()"
#
#
#
#
# paper = {
#   [: 0
#   ]: 5
#   (: 0
#   ): 1
#   {: 0
#   }: 3
# }
#
#
#   bin = {
#     "(":0,
#     "[":0,
#     "{":0,
#     ")":0,
#     "]":0,
#     "}"
#   }
#
#   # if index of closing is i+1
#   # true
#   #
#
#   braces_tracker ={
#     "(":2,
#     "[":2,
#     "{":2
#   }
# Tests
# validBraces( "()" )
# validBraces( "[(])" )


#***********#
# Attempt 2 # (Adeel)
#***********#
# (05-14-2019)

# RUBY #

def validBraces(braces)

  braces_stack = []

  braces_hash = {
    ')':'(',
    '}':'{',
    ']':'['
  }

  braces.split('').each do |brace|
    if brace == '(' || brace == '{' || brace == '['
      braces_stack.push(brace)
    else
      braces_stack[braces_stack.length - 1] == braces_hash[brace.to_sym] ? braces_stack.pop : (return false)
    end
  end

  braces_stack.empty? ? true : false
end
