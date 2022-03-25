# frozen_string_literal: true

def solution(input_array)
  input_array.each_cons(2).to_a.map { |consecutive_pair| consecutive_pair.reduce(:-).abs }.max
end

# Alternative solution using index

# def solution(input_array)
#   differences = []
#   input_array[...-1].each_with_index { |element, index| differences.push((element - input_array[index + 1]).abs) }
#   differences.max
# end
