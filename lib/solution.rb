# frozen_string_literal: true

def solution(input_array)
  input_array[(input_array.length - 1) / 2.0].floor
end

# Alternative explicit solution

# def solution(input_array)
#   median = (input_array[(input_array.length - 1) / 2] + input_array[input_array.length / 2]) / 2.0
#   input_array.min_by { |element| (median - element).abs }
# end
