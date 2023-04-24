# frozen_string_literal: true

# Given an integer product, find the smallest positive (i.e. greater than 0) integer the product of whose digits is
# equal to product. If there is no such integer, return -1 instead.

def digits_product(prod)
  return 10 if prod.zero?
  return 1 if prod == 1

  factors = []

  (2..9).reverse_each do |factor|
    while (prod % factor).zero?
      factors << factor
      prod /= factor
    end
  end

  prod > 1 ? - 1 : factors.sort.join.to_i
end
