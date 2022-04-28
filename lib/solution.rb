# frozen_string_literal: true

def solution(bishop, pawn)
  (bishop[0].ord - pawn[0].ord).abs == (bishop[1].to_i - pawn[1].to_i).abs
end

# Alternate solution with chessboard array

# def solution(bishop, pawn)
#   chessboard = 8.times.map { 8.times.map { false } }
#   bishop = [bishop[1].to_i - 1, bishop.ord - 97]
#   pawn = [pawn[1].to_i - 1, pawn.ord - 97]

#   (0..7).each do |x_axis|
#     (0..7).each do |y_axis|
#       chessboard[x_axis][y_axis] = true if (x_axis - bishop[0]).abs == (y_axis - bishop[1]).abs
#     end
#   end

#   chessboard[pawn[0]][pawn[1]]
# end
