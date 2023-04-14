# frozen_string_literal: true

# Construct a square matrix with a size N × N containing integers from 1 to N * N in a spiral order, starting from
# top-left and in clockwise direction.

def solution(num)
  num = num**2 + 1
  arr = []
  arr = [arr.map { num -= 1 }] + arr.transpose.reverse while num > 1
  arr.map!(&:reverse)
end

# Alternate solution using x and y coordinates.

# def solution(num)
#   integers = (1..num**2).to_a.reverse
#   matrix = Array.new(num).map { Array.new(num, []) }

#   xrng = (0...num)
#   yrng = (0...num)
#   x = 0
#   y = 0

#   until integers.empty?
#     if x == xrng.min && y == yrng.min
#       xrng.each { |icol| matrix[y][icol] = [integers.pop] }
#       x = xrng.max
#       y += 1
#       yrng = y..yrng.max
#     elsif x == xrng.max && y == yrng.min
#       yrng.each { |irow| matrix[irow][x] = [integers.pop] }
#       x -= 1
#       y = yrng.max
#       xrng = xrng.min..x
#     elsif x == xrng.max && y == yrng.max
#       xrng.reverse_each { |icol| matrix[y][icol] = integers.pop }
#       x = xrng.min
#       y -= 1
#       yrng = yrng.min..y
#     elsif x == xrng.min && y == yrng.max
#       yrng.reverse_each { |irow| matrix[irow][x] = integers.pop }
#       x += 1
#       y = yrng.min
#       xrng = x..xrng.max
#     end
#   end

#   matrix.map(&:flatten)
# end
