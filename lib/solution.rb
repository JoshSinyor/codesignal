# frozen_string_literal: true

# Given an integer product, find the smallest positive (i.e. greater than 0) integer the product of whose digits is
# equal to product. If there is no such integer, return -1 instead.

def solution(product)
  return 10 if product.zero?
  return 1 if product == 1

  factors = []

  (2..9).reverse_each do |factor|
    while (product % factor).zero?
      factors << factor
      product /= factor
    end
  end

  product > 1 ? - 1 : factors.sort.join.to_i
end
