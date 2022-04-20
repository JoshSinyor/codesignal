# frozen_string_literal: true

def solution(input_array)
  output_array = []

  input_array[...-2].each_with_index do |row, row_index|
    interim_array = []

    (row.length - 2).times do |col_index|
      first_row = row[col_index, 3]
      second_row = input_array[row_index + 1][col_index, 3]
      third_row = input_array[row_index + 2][col_index, 3]

      interim_array.push((first_row + second_row + third_row).sum / 9)
    end

    output_array.push(interim_array)
  end

  output_array
end
