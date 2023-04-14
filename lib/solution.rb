# frozen_string_literal: true

# Sudoku is a number-placement puzzle. The objective is to fill a 9 × 9 grid with digits so that each column, each row,
# and each of the nine 3 × 3 sub-grids that compose the grid contains all of the digits from 1 to 9.

# This algorithm should check if the given grid of numbers represents a correct solution to Sudoku.

def solution(grid)
  grid.all? { |line| line.uniq.length == 9 } &&
    grid.transpose.all? { |line| line.uniq.length == 9 } &&
    grid.each_slice(3).all? do |row|
      row.transpose.each_slice(3).all? { |square| square.flatten.uniq.length == 9 }
    end
end

# Alternate solution using flat_map method.

# def solution(grid)
#   return false if grid.any? { |line| line.uniq.length != 9 } || grid.transpose.any? { |line| line.uniq.length != 9 }

#   grid.each_slice(3).flat_map do |row|
#     row.transpose.each_slice(3).to_a.map(&:flatten)
#   end.none? { |square| square.uniq.length != 9 }
# end
