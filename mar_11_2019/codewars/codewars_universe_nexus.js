// # Name: Find the nexus of the codewars universe
// # Difficulty: 6 kyu
// #
// # --- sources ---
// # Website:  CodeWars
// # URL: https://www.codewars.com/kata/find-the-nexus-of-the-codewars-universe/train/ruby
// #
// # Provided by:
// # Adeel
// #
// # Attempted by:
// # Paul
//
//
// ##################
// #                #
// #  Instructions  #
// #                #
// ##################
// #
// Not to brag, but I recently became the
// nexus of the Codewars universe! My honor
// and my rank were the same number. I cried
// a little.
//
// Complete the method that takes a
// hash/object/directory/association list of
// users, and find the nexus: the user whose
// rank is the closest is equal to his honor.
// Return the rank of this user. For each user,
// the key is the rank and the value is the honor.
//
// If nobody has an exact rank/honor match, return the rank of the user who comes closest. If there are several users who come closest, return the one with the lowest rank (numeric value). The hash will not necessarily contain consecutive rank numbers; return the best match from the ranks provided.
//
// Example
//          rank    honor
// users = {  1  =>  93,
//           10  =>  55,
//           15  =>  30,
//           20  =>  19,    <--- nexus
//           23  =>  11,
//           30  =>   2 }

// ##############
// # PSEUDOCODE #
// ##############
//
// iterate through each of the key value pairs
// convert key of each pair to number, get abs value of each pair
// set a minimum difference is 234235325
// if the difference of key/value pair is less than min difference, difference = min difference

// #######################
// # JAVACRIPT SOLUTIONS #
// #######################

// #**********************#
// # Paul's Attempt 1     #
// #**********************#

function nexus(users) {
   let minDifference = 213342387987, difference = 0, nexus = null;

   lowestRanks = [];

   Object.entries(users).forEach((el, i) => {
       difference = Math.abs(Number(el[0]) - el[1])
       console.log(difference);
       if(difference < minDifference) {
           minDifference = difference;
           nexus = Number(el[0])
       } else if (difference === minDifference) {
           lowestRanks.push(el[0])
       }
   })

   if(lowestRanks.length > 0) {
     lowestRanks.push(nexus);
     return lowestRanks.sort((a,b) => {return a - b})[0]
   }
   return nexus;
}

// ##################
// # RUBY SOLUTIONS #
// ##################

// #***********************#
// # Adeel's Attempt 1     #
// #***********************#

def nexus(users)

  diff = (users.keys[0] - users.values[0]).abs;
  nexus = users.keys[0];

  users.each do |key, value|
    new_diff = (key - value).abs
    if new_diff == diff
      if key < nexus
        nexus = key
      end

    elsif new_diff < diff
      diff = new_diff
      nexus = key
    end
  end

  return nexus
end


// #######################
// # JAVACRIPT SOLUTIONS #
// #######################

// #***********************#
// # Adeel's Attempt 1     #
// #***********************#

function nexus(users) {
  const keys = Object.keys(users);
  const values = Object.values(users);
  let nexus = parseInt(keys[0]);
  let difference = Math.abs(parseInt(keys[0]) - values[0]);

  for(let i=0; i<keys.length; i++) {
    let new_dif = Math.abs(parseInt(keys[i]) - values[i])

    if (new_dif < difference) {
      difference = new_dif
      nexus = parseInt(keys[i])
    }
  }
  return nexus
}
