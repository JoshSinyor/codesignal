# frozen_string_literal: true

# Given an array of integers, find the maximal absolute difference between any two of its adjacent elements.

def array_maximal_adjacent_difference(arr)
  arr.each_cons(2).to_a.map { |cons| cons.reduce(:-).abs }.max
end
