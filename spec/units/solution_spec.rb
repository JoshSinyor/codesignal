# frozen_string_literal: true

require 'solution'

TEST_I_O = [
  { test: 1, input1: 100, input2: 20, input3: 170, output: 3 }, # 01
  { test: 2, input1: 100, input2: 1, input3: 101, output: 1 }, # 02
  { test: 3, input1: 1, input2: 100, input3: 64, output: 6 }, # 03
  { test: 4, input1: 20, input2: 20, input3: 50, output: 6 }, # 04
  { test: 5, input1: 50, input2: 25, input3: 100, output: 4 } # 05
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
