# frozen_string_literal: true

require 'even_digits_only'

EVEN_DIGITS_ONLY_TEST_I_O = [
  { test: 1, input: 248_622, output: true }, # 01
  { test: 2, input: 642_386, output: false }, # 02
  { test: 3, input: 248_842, output: true }, # 03
  { test: 4, input: 1, output: false }, # 04
  { test: 5, input: 8, output: true }, # 05
  { test: 6, input: 2_462_487, output: false }, # 06
  { test: 7, input: 468_402_800, output: true }, # 07
  { test: 8, input: 2_468_428, output: true }, # 08
  { test: 9, input: 5_468_428, output: false }, # 09
  { test: 10, input: 7_468_428, output: false } # 10
].freeze

describe 'even_digits_only?' do
  it 'passes the supplied tests with 1 input and 1 output' do
    EVEN_DIGITS_ONLY_TEST_I_O.each do |element|
      puts "  Executing test #{element[:test]}..."
      expect(even_digits_only?(element[:input])).to eq(element[:output])
      puts '    Passed.'
    end
  end
end
