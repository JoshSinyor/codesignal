# frozen_string_literal: true

require 'adjacent_elements_product'

ADJACENT_ELEMENTS_PRODUCT_TEST_I_O = [
  { test: 1, input: [3, 6, -2, -5, 7, 3], output: 21 }, # 01
  { test: 2, input: [-1, -2], output: 2 }, # 02
  { test: 3, input: [5, 1, 2, 3, 1, 4], output: 6 }, # 03
  { test: 4, input: [1, 2, 3, 0], output: 6 }, # 04
  { test: 5, input: [9, 5, 10, 2, 24, -1, -48], output: 50 }, # 05
  { test: 6, input: [5, 6, -4, 2, 3, 2, -23], output: 30 }, # 06
  { test: 7, input: [4, 1, 2, 3, 1, 5], output: 6 }, # 07
  { test: 8, input: [-23, 4, -3, 8, -12], output: -12 }, # 08
  { test: 9, input: [1, 0, 1, 0, 1000], output: 0 } # 09
].freeze

describe 'adjacent_elements_product' do
  it 'passes the supplied tests with 1 input and 1 output' do
    ADJACENT_ELEMENTS_PRODUCT_TEST_I_O.each do |element|
      puts "  Executing test #{element[:test]}..."
      expect(adjacent_elements_product(element[:input])).to eq(element[:output])
      puts '    Passed.'
    end
  end
end
