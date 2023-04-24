# frozen_string_literal: true

# Given a rectangular matrix containing only digits, calculate the number of different 2 × 2 squares in it.

def different_squares(mat)
  mat.each_cons(2).flat_map do |row|
    row.transpose.each_cons(2).to_a
  end.uniq.size
end
