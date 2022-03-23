# frozen_string_literal: true

def solution(input_array)
  input_array.select { |string| string.length == input_array.map(&:length).max }
end
