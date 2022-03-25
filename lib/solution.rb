# frozen_string_literal: true

def solution(input_array)
  moves = 0

  input_array[1..].each_index do |index|
    next if input_array[index + 1] > input_array[index]

    move = (input_array[index] - input_array[index + 1]) + 1

    input_array[index + 1] += move
    moves += move
  end

  moves
end
