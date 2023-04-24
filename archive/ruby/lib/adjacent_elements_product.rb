# frozen_string_literal: true

# Given an array of integers, find the pair of adjacent elements that has the largest product and return that product.

def adjacent_elements_product(arr)
  arr.each_cons(2).map { |a, b| a * b }.max
end
