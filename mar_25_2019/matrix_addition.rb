# Name: Matrix Addition
# Difficulty: 6 kyu

# --- sources ---
# Website: CodeWars
# URL: https://www.codewars.com/kata/matrix-addition/train/ruby


# Provided by:
# Paula

# Attempted by:
# Adeel


# Feedback:
# 1.
# 2.


#############
# SOLUTIONS #
#############

#Objective:
  # Create a final 2D array that sums the contents of the two arrays together

# Pseudocode:
  # iterate through only of the matrices ('a')
  # for each array in the matrix:
    # iterate through the inner array of 'a' (let's call it a matrix_row)
      # for each number in the array:
        # get the sum of the number in the matrix row of array 'a'
        # and the number of its equivalent index in array 'b'
        # push this result into an array called 'matrix_row'
    # once the iteration through an inner array of 'a' (matrix row) is finished:
    # push the matrix_row array into a final_array
  # output the final array

#*******************#
# Adeel's Attempt 1 #
#*******************#

def matrixAddition(a, b)

    final_array = []

    a.each.with_index do |arr1, i1|
      matrix_row = []
      arr1.each_with_index do |n1, i2|
        sum = n1 + b[i1][i2]
        matrix_row.push(sum)
      end
      final_array.push(matrix_row)
    end

    final_array
end
