# Name: Persistent Bugger
# Difficulty: 6 kyu

# Website: CodeWars
# URL: https://www.codewars.com/kata/persistent-bugger/train/ruby

# Attempted by: Paul

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
# Write a function, persistence, that takes in a positive parameter num and returns its multiplicative persistence, which is the number of times you must multiply the digits in num until you reach a single digit.
#
# For example:
#
#  persistence(39) # returns 3, because 3*9=27, 2*7=14, 1*4=4
#                  # and 4 has only one digit
#
#  persistence(999) # returns 4, because 9*9*9=729, 7*2*9=126,
#                   # 1*2*6=12, and finally 1*2=2
#
#  persistence(4) # returns 0, because 4 is already a one-digit number


########################
# JAVASCRIPT SOLUTIONS #
########################

#******************#
# Paul's Attempt 1 #
#******************#

function persistence(num) {
  let numAsString = num.toString();
  let numAsArray = [...numAsString]
  let result = null, product = null, count = 0;

  if (numAsArray.length === 1) {
      return count;
  }

  while(product === null || product > 9) {
    if(product === null) {
      product = numAsArray.reduce((a,b) => Number(a) * Number(b));
      count += 1;
    } else {
        if(product > 9) {
            product = result.reduce((a,b) => Number(a) * Number(b));
            count += 1;
        }
    }
    result = product.toString();
    result = [...result];
  }

  return count;

}


##################
# RUBY SOLUTIONS #
##################

#*******************#
# Adeel's Attempt 1 #
#*******************#

# PSEUDOCODE:
    # create empty array: tracked_indices = []
    # create a new variable to hold the accepted array: nums_array

    # iterate through the rotation_array
    # for each value in the rotation array:
        # shift() out the first value in nums_array and push() it into it again
        # find the index of the max value
        # push this index value into the indices array
    # end loop

    # return the indices array

########################

def maxTracker(nums, rotation_array)
    tracked_indices = []
    nums_array = nums

    rotation_array.each do |rot_num|
      nums_array.push(nums_array.shift())
      tracked_indices.push(nums_array.index(nums_array.max))
    end

    return tracked_indices
end
