# Name: Find First and Last Position of Element in Sorted Array
# Source: LeetCode
# Difficulty: medium
#
# URL: https://leetcode.com/problems/find-first-and-last-position-of-element-in-sorted-array/
#
# Provided by:
# Adeel M.
#
#
# Attempted by:
# 1. Adeel (pre-meeting)
# 2. Paul - 02/18/2019
#
#
##################
#                #
#  Instructions  #
#                #
##################
#
# Given an array of integers nums sorted in ascending order, find the starting and ending position of a given target value.
#
# Your algorithm's runtime complexity must be in the order of O(log n).
#
# If the target is not found in the array, return [-1, -1].
#
# Example 1:
#
# Input: nums = [5,7,7,8,8,10], target = 8
# Output: [3,4]
# Example 2:
#
# Input: nums = [5,7,7,8,8,10], target = 6
# Output: [-1,-1]


###############
# PseudoCode: #
###############

# set up and empty array for indices
# first check if the target is in the array
# if it is:
    # go through the array and check for the number
    # if the number is target, add its index to the empty indices array

# return an array of the first and last values in the indices array

# else:
   # return [-1,-1]



##################
# RUBY SOLUTIONS #
##################

#*******************#
# Adeel's Attempt 1 #
#*******************#

def search_range(nums, target)
  emp = []
  if nums.include?(target)
      nums.each_with_index do |n,i|
          if n == target
              emp.push(i)
          end
      end

      emp.map {|n| [emp[0], emp[emp.length - 1]] }[0]

  else
      [-1,-1]
  end
end

#*******************#
# Adeel's Attempt 2 #
#*******************#

def search_range(nums, target)
    emp = []
    if nums.include?(target)
        emp = nums.each_with_index.map { |n,i| i if n == target }.compact
        emp.map { |n| [emp[0], emp[emp.length - 1]] }[0]
    else
        [-1,-1]
    end
end



#*******************#
# Pauls's Attempt 1 #
#*******************#
# Note: This is the most efficient of the 3 attempts here #

def search_range(nums, target)
    first_number = nil
    second_number = nil
    if nums.include?(target)
        first_number = nums.find_index(target)
        second_number = ((nums.length - 1) - nums.reverse.find_index(target))
    else
        first_number = -1
        second_number = -1
    end
    return [first_number, second_number]
end


########################
# JAVASCRIPT SOLUTIONS #
########################

#**********************#
# [person's] Attempt 1 #
#**********************#

#**********************#
# [person's] Attempt 2 #
#**********************#

#******************************#
# [another person's] Attempt 1 #
#******************************#

#******************************#
# [another person's] Attempt 2 #
#******************************#
