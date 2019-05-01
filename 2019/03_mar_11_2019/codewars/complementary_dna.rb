# Name: Complementary DNA
# Source: CodeWars
# Difficulty: 7 kyu
#
# URL: https://www.codewars.com/kata/complementary-dna/train/ruby
#
# Attempted by:
# 1. Adeel - 03/11/2019
#
#
##################
#                #
#  Instructions  #
#                #
##################
#
#
# Deoxyribonucleic acid (DNA) is a
# chemical found in the nucleus of
# cells and carries the "instructions"
# for the development and functioning
# of living organisms.
#
# If you want to know more
# http://en.wikipedia.org/wiki/DNA
#
# In DNA strings, symbols
# "A" and "T" are complements of
# each other, as "C" and "G". You
# have function with one side of the
# DNA (string, except for Haskell);
# you need to get the other
# complementary side. DNA strand
# is never empty or there is no DNA
# at all (again, except for Haskell).
#
# More similar exercise are found
# here http://rosalind.info/problems/list-view/ (source)

#################
#  PseudoCode:  #
#################

#
#

##################
# RUBY SOLUTIONS #
##################

#*******************#
# Adeel's Attempt 1 #
#*******************#

def DNA_strand(dna)
  complementary_str = ''
  dna.chars.each do |char|
    case char
      when 'A'
        complementary_str += 'T'
      when 'T'
        complementary_str += 'A'
      when 'C'
        complementary_str += 'G'
      when 'G'
        complementary_str += 'C'
    end
  end

  complementary_str
end
