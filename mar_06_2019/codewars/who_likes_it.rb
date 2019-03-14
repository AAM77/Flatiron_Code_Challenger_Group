# Challenge Name: Who Likes It
# Difficulty: 6 kyu
#
# --- sources ---
# Website: CodeWars
# URL: https://www.codewars.com/kata/who-likes-it
#
# Provided by:
# Wendy
#
# Attempted by:
# 1. Adeel
#
# Interviewer brief comments:
# 1. Paula:  Nice job of talking while writing pseudocode.
# 2. [interviewer’s name]:
#
##################
#                                #
#  Instructions            #
#                                #
##################
#
=begin
You probably know the "like" system from Facebook and other pages. People can "like" blog posts, pictures or other items. We want to create the text that should be displayed next to such an item.
Implement a function likes :: [String] -> String, which must take in input array, containing the names of people who like an item. It must return the display text as shown in the examples:
likes [] // must be "no one likes this"
likes ["Peter"] // must be "Peter likes this"
likes ["Jacob", "Alex"] // must be "Jacob and Alex like this"
likes ["Max", "John", "Mark"] // must be "Max, John and Mark like this"
likes ["Alex", "Jacob", "Mark", "Max"] // must be "Alex, Jacob and 2 others like this"
=end
#
################
# PSEUDOCODE #
################
#
# Five scenarios:
    # (1) Empty => no one likes this
    # (2) One => 1 likes this
    # (3) Two => 0 & 1 like this
    # (4) Three => 0, 1 & 2 like this
    # (5) Four => 0, 1, & # others like this

    # if empty:
      # return 'no one likes this'
    # elsif length == 1:
      # return 'name1 likes this'
    # elsif length == 2:
      # return 'name1 and name2 like this'
    # elsif length == 3:
      # return 'name1, name2, and name3 like this'
    # else:
      # return 'name1, name2, & remaining# like this'
    # end



##################
# RUBY SOLUTIONS #
##################

#**********************#
# Adeel’s Attempt 1 #
#**********************#
# This is the attempt I made during the interview session


def likes(names)

  msg = ""

  if names.length == 0
    return "no one likes this"
  else
    if names.length <= 3
      names.each_with_index do |name, i|
        # if the index is names.length - 1
          # add the name and "likes this"
        # else if the index is 0
         # add the first name to the msg
        # else
        # add "and" and then the name to the msg
      end
      # add the first element to the array
      # then add each subsequent element, prefixed with an "and"
      #
    end
  end
end

#**********************#
# Adeel’s Attempt 2 #
#**********************#

# This is the attempt I made after the session

if names.length == 0
    return 'no one likes this'
  elsif names.length == 1
    return "#{names[0]} likes this"
  elsif names.length == 2
    return "#{names[0]} and #{names[1]} like this"
  elsif names.length == 3
    return "#{names[0]}, #{names[1]} and #{names[2]} like this"
  else
    return "#{names[0]}, #{names[1]} and #{names.length - 2} others like this"
  end

#**********************#
# Adeel’s Attempt 3  #
#**********************#

def likes(names)
  case names.length
  when 0
    'no one likes this'
  when 1
    "#{names[0]} likes this"
  when 2
    "#{names[0]} and #{names[1]} like this"
  when 3
    "#{names[0]}, #{names[1]} and #{names[2]} like this"
  else
    "#{names[0]}, #{names[1]} and #{names.length - 2} others like this"
  end
end
