# frozen_string_literal: true

require 'sort_by_height'

SORT_BY_HEIGHT_TEST_I_O = [
  { test: 1, input: [-1, 150, 190, 170, -1, -1, 160, 180],
    output: [-1, 150, 160, 170, -1, -1, 180, 190] }, # 01
  { test: 2, input: [-1, -1, -1, -1, -1],
    output: [-1, -1, -1, -1, -1] }, # 02
  { test: 3, input: [-1],
    output: [-1] }, # 03
  { test: 4, input: [4, 2, 9, 11, 2, 16],
    output: [2, 2, 4, 9, 11, 16] }, # 04
  { test: 5, input: [2, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 1],
    output: [1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 2] }, # 05
  { test: 6, input: [23, 54, -1, 43, 1, -1, -1, 77, -1, -1, -1, 3],
    output: [1, 3, -1, 23, 43, -1, -1, 54, -1, -1, -1, 77] } # 06
].freeze

describe 'sort_by_height' do
  it 'passes the supplied tests with 1 input and 1 output' do
    SORT_BY_HEIGHT_TEST_I_O.each do |element|
      puts "  Executing test #{element[:test]}..."
      expect(sort_by_height(element[:input])).to eq(element[:output])
      puts '    Passed.'
    end
  end
end
