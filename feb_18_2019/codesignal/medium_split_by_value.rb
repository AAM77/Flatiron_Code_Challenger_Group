# Name: Split By Value
# Source: CodeSignal
# Difficulty: Medium
#
# URL: https://app.codesignal.com/challenge/JtE3mNB44SyoTGaYi
#
# Provided by:
# Paul
#
# Attempted by:
# 1. Paul (pre-meeting)
# 2. Alwina - 02/18/2019
#
#
##################
#                #
#  Instructions  #
#                #
##################
#
#
# For an integer k rearrange all the elements of the given array in such way, that:
#
# all elements that are less than k are placed before elements that are not less than k;
# all elements that are less than k remain in the same order with respect to each other;
# all elements that are not less than k remain in the same order with respect to each other.
# Example
#
# For k = 5 and elements = [1, 3, 5, 7, 6, 4, 2], the output should be
# splitByValue(k, elements) = [1, 3, 4, 2, 5, 7, 6].
#
# Input/Output
#
# [execution time limit] 4 seconds (rb)
#
# [input] integer k
#
# Guaranteed constraints:
# 0 ≤ k ≤ 10.
#
# [input] array.integer elements
#
# Guaranteed constraints:
# 3 ≤ elements.length ≤ 10,
# 1 ≤ elements[i] ≤ 10.
#
# [output] array.integer


#################
#  PseudoCode:  #
#################

  #iterate over elements array
  #find k
  #then place numbers less than k in the same order
  #and numbers greater than k in the same order


##################
# RUBY SOLUTIONS #
##################

#*******************#
# Alwina's Attempt 1 #
#*******************#

def splitByValue(k, elements)
  less_than_k = []
  greater_than_k = []
  same_as_k = []

  elements.each do |e|
    if (e < k)
      less_than_k << e
    elsif e == k
      same_as_k << e
    else
      greater_than_k << e
    end
  end
  [less_than_k, same_as_k, greater_than_k].flatten
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
