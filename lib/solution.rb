# frozen_string_literal: true

def solution(deposit, rate, threshold)
  Math.log((threshold.to_f / deposit), 1 + (rate.to_f / 100)).ceil
end

# Alternative, insufficiently fast iterative solution

# def solution(deposit, rate, threshold)
#   i = 0

#   until deposit >= threshold
#     deposit += deposit * rate / 100
#     i += 1
#   end

#   i
# end
