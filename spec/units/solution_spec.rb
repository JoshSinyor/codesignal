# frozen_string_literal: true

require 'solution'

TEST_I_O = [
  { test: 1, input1: [1, 2, 3, 4, 5, 6, 7, 8, 9, 10], input2: 3, output: [1, 2, 4, 5, 7, 8, 10] }, # 01
  { test: 2, input1: [1, 1, 1, 1, 1], input2: 1, output: [] }, # 02
  { test: 3, input1: [1, 2, 1, 2, 1, 2, 1, 2], input2: 2, output: [1, 1, 1, 1] }, # 03
  { test: 4, input1: [1, 2, 1, 2, 1, 2, 1, 2], input2: 10, output: [1, 2, 1, 2, 1, 2, 1, 2] }, # 04
  { test: 5, input1: [2, 4, 6, 8, 10], input2: 2, output: [2, 6, 10] } # 05
].freeze

describe 'solution' do
  it 'passes the supplied tests with 2 inputs and 1 output' do
    TEST_I_O.each do |element|
      puts "  Executing test #{element[:test]}..."
      expect(solution(element[:input1], element[:input2])).to eq(element[:output])
      puts '    Passed.'
    end
  end
end
