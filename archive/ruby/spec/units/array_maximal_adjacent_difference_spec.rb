# frozen_string_literal: true

require 'array_maximal_adjacent_difference'

ARRAY_MAXIMAL_ADJACENT_DIFFERENT_TEST_I_O = [
  { test: 1, input: [2, 4, 1, 0], output: 3 }, # 01
  { test: 2, input: [1, 1, 1, 1], output: 0 }, # 02
  { test: 3, input: [-1, 4, 10, 3, -2], output: 7 }, # 03
  { test: 4, input: [10, 11, 13], output: 2 }, # 04
  { test: 5, input: [-2, -2, -2, -2, -2], output: 0 }, # 05
  { test: 6, input: [-1, 1, -3, -4], output: 4 }, # 06
  { test: 7, input: [-14, 15, -15], output: 30 } # 07
].freeze

describe 'array_maximal_adjacent_difference' do
  it 'passes the supplied tests with 1 input and 1 output' do
    ARRAY_MAXIMAL_ADJACENT_DIFFERENT_TEST_I_O.each do |element|
      puts "  Executing test #{element[:test]}..."
      expect(array_maximal_adjacent_difference(element[:input])).to eq(element[:output])
      puts '    Passed.'
    end
  end
end
