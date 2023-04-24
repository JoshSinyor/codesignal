# frozen_string_literal: true

require 'different_squares'

DIFFERENT_SQUARES_TEST_I_O = [
  { test: 1, input: [[1, 2, 1], \
                     [2, 2, 2], \
                     [2, 2, 2], \
                     [1, 2, 3], \
                     [2, 2, 1]], output: 6 }, # 01
  { test: 2, input: [[9, 9, 9, 9, 9], \
                     [9, 9, 9, 9, 9], \
                     [9, 9, 9, 9, 9], \
                     [9, 9, 9, 9, 9], \
                     [9, 9, 9, 9, 9], \
                     [9, 9, 9, 9, 9]], output: 1 }, # 02
  { test: 3, input: [[3]], output: 0 }, # 03
  { test: 4, input: [[3, 4, 5, 6, 7, 8, 9]], output: 0 }, # 04
  { test: 5, input: [[3], \
                     [4], \
                     [5], \
                     [6], \
                     [7]], output: 0 }, # 05
  { test: 6, input: [[2, 5, 3, 4, 3, 1, 3, 2], \
                     [4, 5, 4, 1, 2, 4, 1, 3], \
                     [1, 1, 2, 1, 4, 1, 1, 5], \
                     [1, 3, 4, 2, 3, 4, 2, 4], \
                     [1, 5, 5, 2, 1, 3, 1, 1], \
                     [1, 2, 3, 3, 5, 1, 2, 4], \
                     [3, 1, 4, 4, 4, 1, 5, 5], \
                     [5, 1, 3, 3, 1, 5, 3, 5], \
                     [5, 4, 4, 3, 5, 4, 4, 4]], output: 54 }, # 06
  { test: 7, input: [[1, 1, 1, 1, 1, 1, 2, 2, 2, 3, 3, 3, 9, 9, 9, 2, 3, 9]], output: 0 } # 07
].freeze

describe 'different_squares' do
  it 'passes the supplied tests with 1 input and 1 output' do
    DIFFERENT_SQUARES_TEST_I_O.each do |element|
      puts "  Executing test #{element[:test]}..."
      expect(different_squares(element[:input])).to eq(element[:output])
      puts '    Passed.'
    end
  end
end
