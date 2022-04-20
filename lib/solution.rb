# frozen_string_literal: true

def solution(input_array)
  output_array = []

  border = [false] * (input_array.first.length + 2)
  input_array = [border] + input_array.map { |row| [false] + row + [false] } + [border]

  input_array[1..-2].each_with_index do |row, row_index|
    interim_array = []

    row[1..-2].each_index do |col_index|
      first_row = input_array[row_index][col_index, 3]
      second_row = input_array[row_index + 1][col_index, 3]
      second_row.delete_at(1)
      third_row = input_array[row_index + 2][col_index, 3]

      interim_array.push((first_row + second_row + third_row).count(true))
    end

    output_array.push(interim_array)
  end

  output_array
end
