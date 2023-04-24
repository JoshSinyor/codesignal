# frozen_string_literal: true

# Given a position of a knight on the standard chessboard, find the number of different moves the knight can perform.

# The knight can move to a square that is two squares horizontally and one square vertically, or two squares vertically
# and one square horizontally away from it. The complete move therefore looks like the letter L.

def chess_knight(sqr)
  moves = [[-2, -1], [-2, 1], [-1, -2], [-1, 2], [1, -2], [1, 2], [2, -1], [2, 1]]
  moves.count { |x, y| (sqr[0].ord + x).between?(97, 104) && (sqr[1].to_i + y).between?(1, 8) }
end

# Alternative solution with generated move array:

# def chess_knight(sqr)
#   moves = [1, -1].product([2, -2]) + [2, -2].product([1, -1])
#   moves.count { |x, y| (sqr[0].ord + x).between?(97, 104) && (sqr[1].to_i + y).between?(1, 8) }
# end

# Alternative solution comparing position value against known values:

# def chess_knight(sqr)
#   x_dist = [sqr[0].ord - 96, 105 - sqr[0].ord].min
#   y_dist = [sqr[1].to_i, 9 - sqr[1].to_i].min
#   val = x_dist * y_dist + 1

#   if val > 9 then 8
#   elsif val > 6 then 6
#   else
#     val > 3 ? 4 : val
#   end
# end
