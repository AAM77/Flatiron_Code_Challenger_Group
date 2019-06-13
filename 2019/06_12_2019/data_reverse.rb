# Name: Data Reverse
# Difficulty: 6 kyu

# --- sources ---
# Website:
# URL: https://www.codewars.com/kata/data-reverse/train/ruby


# Provided by:
# Adeel

# Attempted by:
# Tonight we worked as a group on the challenge.
#

##################
#                #
#  Instructions  #
#                #
##################
#
#    A stream of data is received and needs to be reversed.
#    
#    Each segment is 8 bits long, meaning the order of these segments needs to be reversed, for example:
#    
#    11111111  00000000  00001111  10101010
#     (byte1)   (byte2)   (byte3)   (byte4)
#    should become:
#    
#    10101010  00001111  00000000  11111111
#     (byte4)   (byte3)   (byte2)   (byte1)
#    The total number of bits will always be a multiple of 8.
#    
#    The data is given in an array as such:
#    
#    [1,1,1,1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,0,1,0,1,0,1,0]
#    
##############
# PSEUDOCODE #
##############

# given: data = array of single digits with array.length always a multiple of 8 
# objective: treating the digits as groups of 8, reverse the order in which the 8-digit groups appear in a new array

# create separate sub-arrays of length=8
# set a counter = data.length/8 to tell how many subarrays we'll get
# use counter to track number of loops to run 
# set empty array to fill with the reversed results
# use a loop:
#  while counter != 0 OR until counter == 0
#   do data.slice!(0,8) => cuts 8 elements from front of original array
#        and returns new array
#   shovel sliced digits into results array => 8-digit nested subarrays
# Then #flatten results array to combine subarrays into single array
# Note: shoveling from #slice! method alone does NOT reverse order of 
#   digits in final array
#   we had to figure out how to push sliced elements onto 'front' of new
#   array with each iteration in the loop
# used #unshift method

##################
# RUBY SOLUTIONS #
##################

def data_reverse(data)
  result = []
  counter = data.length/8
  while counter != 0 do
    result.unshift(data.slice!(0, 8))
    counter -= 1
  end
  return result.flatten
end

# Sample tests from Codewars
# data_reverse([1,1,1,1,1,1,1,1, 0,0,0,0,0,0,0,0, 0,0,0,0,1,1,1,1, 1,0,1,0,1,0,1,0])
#  =>  [1,0,1,0,1,0,1,0, 0,0,0,0,1,1,1,1, 0,0,0,0,0,0,0,0, 1,1,1,1,1,1,1,1] 
  
# data_reverse([0,0,1,1,0,1,1,0, 0,0,1,0,1,0,0,1]
#  =>  [0,0,1,0,1,0,0,1, 0,0,1,1,0,1,1,0]