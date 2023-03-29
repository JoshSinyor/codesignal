# frozen_string_literal: true

# Given a rectangular matrix containing only digits, calculate the number of different 2 × 2 squares in it.

def solution(input_matrix)
  input_matrix.each_cons(2).flat_map do |row|
    row.transpose.each_cons(2).to_a
  end.uniq.size
end

# Alternative solution using iterative array:

# def solution(input_matrix)
#   squares = []

#   (0...input_matrix.size - 1).each do |row|
#     (0...input_matrix.first.size - 1).each do |col|
#       squares += [input_matrix[row].slice(col, 2) + input_matrix[row + 1].slice(col, 2)]
#     end
#   end

#   squares.uniq.count
# end
