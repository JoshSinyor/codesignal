# frozen_string_literal: true

# Construct a square matrix with a size N × N containing integers from 1 to N * N in a spiral order, starting from
# top-left and in clockwise direction.

def spiral_numbers(num)
  num = (num**2) + 1
  arr = []
  arr = [arr.map { num -= 1 }] + arr.transpose.reverse while num > 1
  arr.map!(&:reverse)
end
