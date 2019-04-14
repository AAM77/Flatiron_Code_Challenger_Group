// # Name: A Needle in a Haystack
// # Difficulty: 8 kyu
//
// # --- sources ---
// # Website: CodeWars
// # URL: https://www.codewars.com/kata/a-needle-in-the-haystack/train/ruby
//
// # Provided by: Adeel
// # Attempted by: Paul
//
//
// ##################
// #                #
// #  Instructions  #
// #                #
// ##################
// #
// JavaScript & TypeScript
//
// findNeedle(['hay', 'junk', 'hay', 'hay', 'moreJunk', 'needle', 'randomJunk'])


// ########################
// # JavaScript SOLUTIONS #
// ########################
//
// #******************#
// # Paul's Attempt 1 #
// #******************#

function findNeedle(haystack) {
  let string;
  haystack.forEach( (ele, index) => {
    if (ele === 'needle') {
      string = 'found the needle at position ' + index;
    }
  })
  return string
}
