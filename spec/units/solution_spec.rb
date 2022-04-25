# frozen_string_literal: true

require 'solution'

TEST_I_O = [
  { test: 1, input1: 10, input2: 2, output: 7 }, # 01
  { test: 2, input1: 10, input2: 7, output: 2 }, # 02
  { test: 3, input1: 4, input2: 1, output: 3 }, # 03
  { test: 4, input1: 6, input2: 3, output: 0 }, # 04
  { test: 5, input1: 18, input2: 6, output: 15 }, # 05
  { test: 6, input1: 12, input2: 10, output: 4 }, # 06
  { test: 7, input1: 18, input2: 5, output: 14 } # 07
].freeze

describe 'solution' do
  it 'passes the supplied tests with 2 inputs and 1 output' do
    TEST_I_O.each do |element|
      puts "Executing test #{element[:test]}..."
      expect(solution(element[:input1], element[:input2])).to eq(element[:output])
      puts 'Passed.'
    end
  end
end
