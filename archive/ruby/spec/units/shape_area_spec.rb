# frozen_string_literal: true

require 'shape_area'

SHAPE_AREA_TEST_I_O = [
  { test: 1, input: 2, output: 5 }, # 01
  { test: 2, input: 3, output: 13 }, # 02
  { test: 3, input: 1, output: 1 }, # 03
  { test: 4, input: 5, output: 41 }, # 04
  { test: 5, input: 7000, output: 97_986_001 }, # 05
  { test: 6, input: 8000, output: 127_984_001 }, # 06
  { test: 7, input: 9999, output: 199_940_005 }, # 07
  { test: 8, input: 9998, output: 199_900_013 }, # 08
  { test: 9, input: 8999, output: 161_946_005 }, # 09
  { test: 10, input: 100, output: 19_801 } # 10
].freeze

describe 'shape_area' do
  it 'passes the supplied tests with 1 input and 1 output' do
    SHAPE_AREA_TEST_I_O.each do |element|
      puts "  Executing test #{element[:test]}..."
      expect(shape_area(element[:input])).to eq(element[:output])
      puts '    Passed.'
    end
  end
end
