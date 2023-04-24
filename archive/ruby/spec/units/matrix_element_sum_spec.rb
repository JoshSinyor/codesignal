# frozen_string_literal: true

require 'matrix_element_sum'

MATRIX_ELEMENT_SUM_TEST_I_O = [
  { test: 1, input: [[0, 1, 1, 2],
                     [0, 5, 0, 0],
                     [2, 0, 3, 3]], output: 9 }, # 01
  { test: 2, input: [[1, 1, 1, 0],
                     [0, 5, 0, 1],
                     [2, 1, 3, 10]], output: 9 }, # 02
  { test: 3, input: [[1, 1, 1],
                     [2, 2, 2],
                     [3, 3, 3]], output: 18 }, # 03
  { test: 4, input: [[0]], output: 0 }, # 04
  { test: 5, input: [[1, 0, 3],
                     [0, 2, 1],
                     [1, 2, 0]], output: 5 }, # 05
  { test: 6, input: [[1],
                     [5],
                     [0],
                     [2]], output: 6 }, # 06
  { test: 7, input: [[1, 2, 3, 4, 5]], output: 15 }, # 07
  { test: 8, input: [[2],
                     [5],
                     [10]], output: 17 }, # 08
  { test: 9, input: [[4, 0, 1],
                     [10, 7, 0],
                     [0, 0, 0],
                     [9, 1, 2]], output: 15 }, # 09
  { test: 10, input: [[1]], output: 1 } # 10
].freeze

describe 'matrix_element_sum' do
  it 'passes the supplied tests with 1 input and 1 output' do
    MATRIX_ELEMENT_SUM_TEST_I_O.each do |element|
      puts "  Executing test #{element[:test]}..."
      expect(matrix_element_sum(element[:input])).to eq(element[:output])
      puts '    Passed.'
    end
  end
end
