# Name: Rotate & Track Max Value
# Difficulty: 6 kyu

# Website: No website -  Interview Question

# Attempted by: Adeel

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
# //Given an array and a rotation array, return an array of the index positions of the max value in each rotation.

# //Rotation Examples
# //[1, 2, 3] --> [3, 1, 2]
# //[3, 1, 2] --> [1, 2, 3]
# //[1, 2, 3] --> [2, 3, 1]

# //example solution([1, 2, 3], [1, 2, 3, 4]) ==> [1, 0, 2, 1]

# [1,2,3], rotation => [1]
# [3,2,1]



##################
# RUBY SOLUTIONS #
##################

#*******************#
# Adeel's Attempt 1 #
#*******************#

# OBJECTIVE:
    # each index value shifts forward ( las index goes to front (0))
    # track the index of the max value and add it to an array
    # return an array of the tracked indices

   # (Arguments => the array of numbers & an array of the nmber of times the shift (rotation) occurs

# PSEUDOCODE:
    # create empty array: tracked_indices = []
    # create a new variable to hold the accepted array: nums_array

    # iterate through the rotation_array
    # for each value in the rotation array:
        # pop() out the last value in nums_array and unshift() it into
        # find the index of the max value
        # push this index value into the indices array
    # end loop

    # return the indices array

def maxTracker(nums, rotation_array)
    tracked_indices = []
    nums_array = nums

    rotation_array.each do |rot_num|
      nums_array.push(nums_array.shift())
      tracked_indices.push(nums_array.index(nums_array.max))
    end

    return tracked_indices
end
