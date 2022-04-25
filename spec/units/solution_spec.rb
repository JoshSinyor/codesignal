# frozen_string_literal: true

require 'solution'

TEST_I_O = [
  { test: 1, input1: [1, 2, 1], input2: 1, input3: 3, output: [3, 2, 3] }, # 01
  { test: 2, input1: [1, 2, 3, 4, 5], input2: 3, input3: 0, output: [1, 2, 0, 4, 5] }, # 02
  { test: 3, input1: [1, 1, 1], input2: 1, input3: 10, output: [10, 10, 10] }, # 03
  { test: 4, input1: [1, 2, 1, 2, 1], input2: 2, input3: 1, output: [1, 1, 1, 1, 1] }, # 04
  { test: 5, input1: [1, 2, 1, 2, 1], input2: 2, input3: 2, output: [1, 2, 1, 2, 1] }, # 05
  { test: 6, input1: [3, 1], input2: 3, input3: 9, output: [9, 1] }, # 06
  { test: 7, input1: [10, 10], input2: 0, input3: 9, output: [10, 10] }, # 07
  { test: 8, input1: [2, 1], input2: 3, input3: 9, output: [2, 1] } # 08
].freeze

describe 'solution' do
  it 'passes the supplied tests with 3 inputs and 1 output' do
    TEST_I_O.each do |element|
      puts "Executing test #{element[:test]}..."
      expect(solution(element[:input1], element[:input2], element[:input3])).to eq(element[:output])
      puts 'Passed.'
    end
  end
end
