# frozen_string_literal: true

require 'knapsack_light'

KNAPSACK_LIGHT_TEST_I_O = [
  { test: 1, input1: 10, input2: 5, input3: 6, input4: 4, input5: 8, output: 10 }, # 01
  { test: 2, input1: 10, input2: 5, input3: 6, input4: 4, input5: 9, output: 16 }, # 02
  { test: 3, input1: 5, input2: 3, input3: 7, input4: 4, input5: 6, output: 7 }, # 03
  { test: 4, input1: 10, input2: 2, input3: 11, input4: 3, input5: 1, output: 0 }, # 04
  { test: 5, input1: 15, input2: 2, input3: 20, input4: 3, input5: 2, output: 15 }, # 05
  { test: 6, input1: 2, input2: 5, input3: 3, input4: 4, input5: 5, output: 3 }, # 06
  { test: 7, input1: 4, input2: 3, input3: 3, input4: 4, input5: 4, output: 4 }, # 07
  { test: 8, input1: 3, input2: 5, input3: 3, input4: 8, input5: 10, output: 3 } # 08
].freeze

describe 'knapsack_light' do
  it 'passes the supplied tests with 5 inputs and 1 output' do
    KNAPSACK_LIGHT_TEST_I_O.each do |element|
      puts "  Executing test #{element[:test]}..."
      expect(knapsack_light(element[:input1], element[:input2], element[:input3], element[:input4],
                            element[:input5])).to eq(element[:output])
      puts '    Passed.'
    end
  end
end
