# frozen_string_literal: true

# Given the positions of a white bishop and a black pawn on the standard chess board, determine whether the bishop can
# capture the pawn in one move.

# The bishop has no restrictions in distance for each move, but is limited to diagonal movement.

def bishop_and_pawn(bsh, pwn)
  (bsh[0].ord - pwn[0].ord).abs == (bsh[1].to_i - pwn[1].to_i).abs
end

# Alternative solution with chessboard array:

# def bishop_and_pawn(bsh, pwn)
#   bsh, pwn = pieces(bsh, pwn)
#   board = Array.new(8).map { [false] * 8 }
#   capture?(bsh, pwn, board)
# end

# private

# def pieces(bsh, pwn)
#   bsh = [bsh[1].to_i - 1, bsh.ord - 97]
#   pwn = [pwn[1].to_i - 1, pwn.ord - 97]

#   [bsh, pwn]
# end

# def capture?(bsh, pwn, board)
#   8.times do |x_axis|
#     8.times do |y_axis|
#       board[x_axis][y_axis] = true if (x_axis - bsh[0]).abs == (y_axis - bsh[1]).abs
#     end
#   end

#   board[pwn[0]][pwn[1]]
# end
