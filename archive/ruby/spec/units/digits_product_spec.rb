# frozen_string_literal: true

require 'digits_product'

DIGITS_PRODUCT_TEST_I_O = [
  { test: 1, input: 12, output: 26 }, # 01
  { test: 2, input: 19, output: -1 }, # 02
  { test: 3, input: 450, output: 2559 }, # 03
  { test: 4, input: 0, output: 10 }, # 04
  { test: 5, input: 13, output: -1 }, # 05
  { test: 6, input: 1, output: 1 }, # 06
  { test: 7, input: 243, output: 399 }, # 07
  { test: 8, input: 576, output: 889 }, # 08
  { test: 9, input: 360, output: 589 } # 09
].freeze

describe 'digits_product' do
  it 'passes the supplied tests with 1 input and 1 output' do
    DIGITS_PRODUCT_TEST_I_O.each do |element|
      puts "  Executing test #{element[:test]}..."
      expect(digits_product(element[:input])).to eq(element[:output])
      puts '    Passed.'
    end
  end
end
