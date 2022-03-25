# frozen_string_literal: true

require 'solution'

TEST_I_O = [
  { test: 1, input1: 10, input2: 15, input3: 15, input4: 10, output: true }, # 01
  { test: 2, input1: 15, input2: 10, input3: 15, input4: 10, output: true }, # 02
  { test: 3, input1: 15, input2: 10, input3: 15, input4: 9, output: false }, # 03
  { test: 4, input1: 10, input2: 5, input3: 5, input4: 10, output: true }, # 04
  { test: 5, input1: 10, input2: 15, input3: 5, input4: 20, output: false }, # 05
  { test: 6, input1: 10, input2: 20, input3: 10, input4: 20, output: true }, # 06
  { test: 7, input1: 5, input2: 20, input3: 20, input4: 5, output: true }, # 07
  { test: 8, input1: 20, input2: 15, input3: 5, input4: 20, output: false }, # 08
  { test: 9, input1: 5, input2: 10, input3: 5, input4: 10, output: true }, # 09
  { test: 10, input1: 1, input2: 10, input3: 10, input4: 0, output: false }, # 10
  { test: 11, input1: 5, input2: 5, input3: 10, input4: 10, output: false }, # 11
  { test: 12, input1: 10, input2: 5, input3: 10, input4: 6, output: false }, # 12
  { test: 13, input1: 1, input2: 1, input3: 1, input4: 1, output: true }, # 13
  { test: 14, input1: 0, input2: 10, input3: 10, input4: 0, output: true } # 14
].freeze

describe 'solution' do
  it 'passes the supplied tests with 4 inputs and 1 output' do
    TEST_I_O.each do |element|
      puts "Executing test #{element[:test]}..."
      expect(solution(element[:input1], element[:input2], element[:input3], element[:input4])).to eq(element[:output])
      puts 'Passed.'
    end
  end
end
