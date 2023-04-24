# frozen_string_literal: true

require 'almost_increasing_sequence'

ALMOST_INCREASING_SEQUENCE_TEST_I_O = [
  { test: 1, input: [1, 3, 2, 1], output: false }, # 01
  { test: 2, input: [1, 3, 2], output: true }, # 02
  { test: 3, input: [1, 2, 1, 2], output: false }, # 03
  { test: 4, input: [3, 6, 5, 8, 10, 20, 15], output: false }, # 04
  { test: 5, input: [1, 1, 2, 3, 4, 4], output: false }, # 05
  { test: 6, input: [1, 4, 10, 4, 2], output: false }, # 06
  { test: 7, input: [10, 1, 2, 3, 4, 5], output: true }, # 07
  { test: 8, input: [1, 1, 1, 2, 3], output: false }, # 08
  { test: 9, input: [0, -2, 5, 6], output: true }, # 09
  { test: 10, input: [1, 2, 3, 4, 5, 3, 5, 6], output: false }, # 10
  { test: 11, input: [40, 50, 60, 10, 20, 30], output: false }, # 11
  { test: 12, input: [1, 1], output: true }, # 12
  { test: 13, input: [1, 2, 5, 3, 5], output: true }, # 13
  { test: 14, input: [1, 2, 5, 5, 5], output: false }, # 14
  { test: 15, input: [10, 1, 2, 3, 4, 5, 6, 1], output: false }, # 15
  { test: 16, input: [1, 2, 3, 4, 3, 6], output: true }, # 16
  { test: 17, input: [1, 2, 3, 4, 99, 5, 6], output: true }, # 17
  { test: 18, input: [123, -17, -5, 1, 2, 3, 12, 43, 45], output: true }, # 18
  { test: 19, input: [3, 5, 67, 98, 3], output: true } # 19
].freeze

describe 'almost_increasing_sequence' do
  it 'passes the supplied tests with 1 input and 1 output' do
    ALMOST_INCREASING_SEQUENCE_TEST_I_O.each do |element|
      puts "  Executing test #{element[:test]}..."
      expect(almost_increasing_sequence(element[:input])).to eq(element[:output])
      puts '    Passed.'
    end
  end
end
