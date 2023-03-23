# frozen_string_literal: true

# Given some integer, find the maximal number you can obtain by deleting exactly one digit of the given number.

def solution(integer)
  permutations = Array.new(integer.digits.length) { |_i| integer.to_s.chars }

  (0..permutations.length - 1).each do |i|
    permutations[i].delete_at(i)
    permutations[i] = permutations[i].join.to_i
  end

  permutations.max
end

# Alternative solution without array

# def solution(number)
#   largest = 0

#   (0..number.to_s.length - 1).each do |i|
#     permutation = number.to_s.chars
#     permutation.delete_at(i)
#     permutation = permutation.join.to_i
#     largest = permutation if permutation > largest
#   end

#   largest
# end
