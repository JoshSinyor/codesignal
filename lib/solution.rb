# frozen_string_literal: true

# Elections are in progress!
#
# Given an array of the numbers of votes given to each of the candidates so far, and an integer k equal to the number of
# voters who haven't cast their vote yet, find the number of candidates who still have a chance to win the election.
#
# The winner of the election must secure strictly more votes than any other candidate. If two or more candidates receive
# the same (maximum) number of votes, assume there is no winner at all.

def solution(candidates, uncounted)
  return candidates.tally.max[1] == 1 ? 1 : 0 if uncounted.zero?

  candidates.tally.select { |n| n + uncounted > candidates.max }.values.sum
end

# Alternate solution using each loop.
#
# def solution(candidates, uncounted)
#   return 1 if uncounted.zero? && candidates.tally.max[1] == 1
#
#   winners = 0
#
#   candidates.each { |candidate| (candidate + uncounted) > candidates.max ? winners += 1 : next }
#
#   winners
# end
