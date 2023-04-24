# frozen_string_literal: true

# Given two cells on the standard chess board, determine whether they have the same color or not.

def chessboard_cell_color(cll1, cll2)
  (cll1[0].ord + cll1[1].to_i).odd? == (cll2[0].ord + cll2[1].to_i).odd?
end

# Alternative solution using codepoints instead of ord:

# def chessboard_cell_color(cll1, cll2)
#   (cll1[0].codepoints[0] + cll1[1].to_i).even? == (cll2[0].codepoints[0] + cll2[1].to_i).even?
# end

# Alternative solution using match:

# def chessboard_cell_color(cll1, cll2)
#   clls = [cll1, cll2]

#   clls.map! do |cll|
#     case cll.chars[0].match?(/[ACEG]/)
#     when true
#       cll.chars[1].to_i.even? ? 'white' : 'black'
#     when false
#       cll.chars[1].to_i.odd? ? 'white' : 'black'
#     end
#   end

#   clls[0] == clls[1]
# end
