# frozen_string_literal: true

def solution(your_left, your_right, their_left, their_right)
  [your_left, your_right].sort == [their_left, their_right].sort
end

# Alternative solution

# def solution(your_left, your_right, their_left, their_right)
#   return true if your_left == their_left && your_right == their_right
#   return true if your_left == their_right && your_right == their_left
#
#   false
# end
