# frozen_string_literal: true

def solution(input_array, old_element, new_element)
  input_array.map { |element| element == old_element ? new_element : element }
end
