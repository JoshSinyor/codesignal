# frozen_string_literal: true

require 'make_array_consecutive_two'

MAKE_ARRAY_CONSECUTIVE_TWO_TEST_I_O = [
  { test: 1, input: [6, 2, 3, 8], output: 3 }, # 01
  { test: 2, input: [0, 3], output: 2 }, # 02
  { test: 3, input: [5, 4, 6], output: 0 }, # 03
  { test: 4, input: [6, 3], output: 2 }, # 04
  { test: 5, input: [1], output: 0 } # 05
].freeze

describe 'make_array_consecutive_two' do
  it 'passes the supplied tests with 1 input and 1 output' do
    MAKE_ARRAY_CONSECUTIVE_TWO_TEST_I_O.each do |element|
      puts "  Executing test #{element[:test]}..."
      expect(make_array_consecutive_two(element[:input])).to eq(element[:output])
      puts '    Passed.'
    end
  end
end
