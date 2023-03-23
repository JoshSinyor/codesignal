# frozen_string_literal: true

# Given a position of a knight on the standard chessboard, find the number of different moves the knight can perform.

# The knight can move to a square that is two squares horizontally and one square vertically, or two squares vertically
# and one square horizontally away from it. The complete move therefore looks like the letter L.

def solution(square)
  square = [square[0].ord - 96, square[1].to_i]
  moves = [-2, -1, 1, 2].permutation(2).reject { |move| move[0].abs == move[1].abs }
  moves.select { |move| (move[0] + square[0]).between?(1, 8) && (move[1] + square[1]).between?(1, 8) }.length
end

# Alternative solution using move array

# def solution(square)
#   coordinates = [square[0].ord - 96, square[1].to_i]
#   valid_moves = 0

#   potential_moves = [
#     [-2, -1],
#     [-2, 1],
#     [-1, -2],
#     [-1, 2],
#     [1, -2],
#     [1, 2],
#     [2, -1],
#     [2, 1]
#   ]

#   potential_moves.each do |position|
#     potential_coordinates = [coordinates[0] + position[0], coordinates[1] + position[1]]
#     valid_moves += 1 if potential_coordinates[0].between?(1, 8) && potential_coordinates[1].between?(1, 8)
#   end

#   valid_moves
# end
