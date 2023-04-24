# frozen_string_literal: true

# Sudoku is a number-placement puzzle. The objective is to fill a 9 × 9 grid with digits so that each column, each row,
# and each of the nine 3 × 3 sub-grids that compose the grid contains all of the digits from 1 to 9.

# This algorithm should check if the given grid of numbers represents a correct solution to Sudoku.

def sudoku(arr)
  lines_all_1_9?(arr) && squares_all_1_9?(arr)
end

private

def lines_all_1_9?(arr)
  arr.all? { |line| line.uniq.length == 9 } &&
    arr.transpose.all? { |line| line.uniq.length == 9 }
end

def squares_all_1_9?(arr)
  arr.each_slice(3).all? do |row|
    row.transpose.each_slice(3).all? { |square| square.flatten.uniq.length == 9 }
  end
end

# Alternative solution using flat_map method:

# def sudoku(arr)
#   lines_all_1_9?(arr) && squares_all_1_9?(arr)
# end

# private

# def lines_all_1_9?(arr)
#   arr.all? { |line| line.uniq.length == 9 } &&
#     arr.transpose.all? { |line| line.uniq.length == 9 }
# end

# def squares_all_1_9?(arr)
#   arr = arr.each_slice(3).flat_map { |row| row.transpose.each_slice(3).to_a.map(&:flatten) }
#   arr.all? { |square| square.uniq.length == 9 }
# end
