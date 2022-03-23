# frozen_string_literal: true

def solution(input_array)
  people = input_array.reject { |element| element == -1 }.sort
  i = -1

  input_array.map! do |element|
    next -1 if element == -1

    i += 1
    people[i]
  end
end
