# frozen_string_literal: true

require 'century_from_year'

CENTURY_FROM_YEAR_TEST_I_O = [
  { test: 1, input: 1905, output: 20 }, # 01
  { test: 2, input: 1700, output: 17 }, # 02
  { test: 3, input: 1988, output: 20 }, # 03
  { test: 4, input: 2000, output: 20 }, # 04
  { test: 5, input: 2001, output: 21 }, # 05
  { test: 6, input: 200, output: 2 }, # 06
  { test: 7, input: 374, output: 4 }, # 07
  { test: 8, input: 45, output: 1 }, # 08
  { test: 9, input: 8, output: 1 } # 09
].freeze

describe 'century_from_year' do
  it 'passes the supplied tests with 1 input and 1 output' do
    CENTURY_FROM_YEAR_TEST_I_O.each do |element|
      puts "  Executing test #{element[:test]}..."
      expect(century_from_year(element[:input])).to eq(element[:output])
      puts '    Passed.'
    end
  end
end
