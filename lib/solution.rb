# frozen_string_literal: true

def solution(input_string)
  longest = ''
  first_iterator = 0
  while first_iterator < input_string.length
    second_iterator = 1
    while (first_iterator + second_iterator) <= input_string.length
      chunk = input_string.slice(first_iterator, second_iterator)
      longest = chunk if (chunk.length > longest.length) && (chunk == chunk.reverse)
      second_iterator += 1
    end
    first_iterator += 1
  end
  longest
end
