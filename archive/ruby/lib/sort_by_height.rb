# frozen_string_literal: true

# Some people are standing in a row in a park. There are trees between them which cannot be moved. Your task is to
# rearrange the people by their heights in a non-descending order without moving the trees. People can be very tall!

def sort_by_height(arr)
  ppl = arr.select(&:positive?).sort
  arr.map { |ele| ele.positive? ? ppl.shift : ele }
end

# Alternative solution using iterator:

# def sort_by_height(arr)
#   people = arr.reject { |element| element == -1 }.sort
#   i = -1

#   arr.map! do |element|
#     next -1 if element == -1

#     i += 1
#     people[i]
#   end
# end
