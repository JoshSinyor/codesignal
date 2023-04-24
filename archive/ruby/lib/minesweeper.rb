# frozen_string_literal: true

# In the popular Minesweeper game you have a board with some mines and those cells that don't contain a mine have a
# number in it that indicates the total number of mines in the neighboring cells. Starting off with some arrangement of
# mines we want to create a Minesweeper game setup.

# Alternative solution using each_index and each_with_index:

def minesweeper(arr)
  squares(border(arr)).each_slice(arr.first.length).to_a
end

private

def border(arr)
  brd = [false] * (arr.first.length + 2)
  [brd] + arr.map { |row| [false] + row + [false] } + [brd]
end

def squares(arr)
  sqs = []
  arr.each_cons(3) { |row| row.transpose.each_cons(3) { |sqr| sqs.push(sqr.flatten) } }
  sqs.map do |sqr|
    sqr.delete_at(4)
    sqr.count(true)
  end
end

# Alternative solution using each_with_index:

# def minesweeper(in_arr)
#   out_arr = []

#   border = [false] * (in_arr.first.length + 2)
#   in_arr = [border] + in_arr.map { |row| [false] + row + [false] } + [border]

#   in_arr[1..-2].each_with_index do |row, row_i|
#     tmp_arr = []

#     row[1..-2].each_index do |col_i|
#       row_1 = in_arr[row_i][col_i, 3]
#       row_2 = in_arr[row_i + 1][col_i, 3]
#       row_2.delete_at(1)
#       row_3 = in_arr[row_i + 2][col_i, 3]

#       tmp_arr.push((row_1 + row_2 + row_3).count(true))
#     end

#     out_arr.push(tmp_arr)
#   end

#   out_arr
# end
