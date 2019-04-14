# Name: Two to One
# Difficulty: 7 kyu

# --- sources ---
# Website: CodeWars
# URL: https://www.codewars.com/kata/two-to-one/train/ruby


# Provided by: Adeel
# Attempted by: Paula


##################
#                #
#  Instructions  #
#                #
##################
#
# Take 2 strings s1 and s2 including only letters from ato z. Return a new sorted string, the longest possible, containing distinct letters,
#
# each taken only once - coming from s1 or s2.
# Examples:
# a = "xyaabbbccccdefww"
# b = "xxxxyyyyabklmopq"
# longest(a, b) -> "abcdefklmopqwxy"
#
# a = "abcdefghijklmnopqrstuvwxyz"
# longest(a, a) -> "abcdefghijklmnopqrstuvwxyz"


##############
# PSEUDOCODE #
##############
#
# combine the 2 strings into one
# sort new string -- will have repeated letters
# convert to array then array.uniq
# reduces to string of unique letters


##################
# RUBY SOLUTIONS #
##################

#**********************#
# [person's] Attempt 1 #
#**********************#

def longest(a1, a2)
    (a1 + a2).split("").sort.uniq.join
end

# test cases
# longest("aretheyhere", "yestheyarehere") #, "aehrsty")
# longest("loopingisfunbutdangerous", "lessdangerousthancoding") # "abcdefghilnoprstu"
# longest("inmanylanguages", "theresapairoffunctions") #  "acefghilmnoprstuy"
