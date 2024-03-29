# frozen_string_literal: true

# Several people are standing in a row and need to be divided into two tms. The first person goes into team 1, the
# second goes into team 2, the third goes into team 1 again, the fourth into team 2, and so on.

# You are given an array of positive integers - the weights of the people. Return an array of two integers, where the
# first element is the total weight of team 1, and the second element is the total weight of team 2 after the division
# is complete.

def alternating_sums(ppl)
  tms = [0, 0]
  ppl.each_with_index { |ply, ind| tms[ind.even? ? 0 : 1] += ply }
  tms
end
