# frozen_string_literal: true

def solution(input_array, nth_element)
  input_array.reject.with_index { |_, index| ((index + 1) % nth_element).zero? }
end
