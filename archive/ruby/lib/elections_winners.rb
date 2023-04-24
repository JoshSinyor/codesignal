# frozen_string_literal: true

# Elections are in progress!

# Given an array of the numbers of votes given to each of the candidates so far, and an integer k equal to the number of
# voters who haven't cast their vote yet, find the number of candidates who still have a chance to win the election.

# The winner of the election must secure strictly more votes than any other candidate. If two or more candidates receive
# the same (maximum) number of votes, assume there is no winner at all.

def elections_winners(ballot, num)
  return ballot.tally.max[1] == 1 ? 1 : 0 if num.zero?

  ballot.tally.select { |can| can + num > ballot.max }.values.sum
end

# Alternative solution using each loop:

# def elections_winners(ballot, num)
#   return 1 if num.zero? && ballot.tally.max[1] == 1

#   wins = 0
#   ballot.each { |can| (can + num) > ballot.max ? wins += 1 : next }
#   wins
# end
