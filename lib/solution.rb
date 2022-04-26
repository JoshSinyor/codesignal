# frozen_string_literal: true

def solution(input_array, slice_size)
  array_length = input_array.size
  second_array = [0]

  (0...array_length).each do |index|
    second_array[index + 1] = second_array[index] + input_array[index]
  end

  (0..array_length - slice_size).map do |index|
    second_array[index + slice_size] - second_array[index]
  end.max
end

# Alternate, slower method (t +69%)

# def solution(input_array, slice_size)
#   input_array.each_cons(slice_size).max_by(&:sum).sum
# end

# Alternate, even slower method (t +72%)

# def solution(input_array, slice_size)
#   current_sum = running_maximum = 0

#   input_array.each_cons(slice_size) do |slice|
#     current_sum = slice.sum
#     running_maximum = current_sum if current_sum > running_maximum
#   end

#   running_maximum
# end

# Alternate, even slower method (t +179%)

# def solution(input_array, slice_size)
#   running_maximum = current_sum = 0
#   slice_size = slice_size - 1

#   input_array[...-1].each_with_index do |element, index|
#     current_sum = element + input_array[index + 1, slice_size].sum
#     running_maximum = current_sum if current_sum > running_maximum
#   end

#   running_maximum
# end
