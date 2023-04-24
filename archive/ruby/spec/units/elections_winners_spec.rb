# frozen_string_literal: true

require 'elections_winners'

ELECTIONS_WINNERS_TEST_I_O = [
  { test: 1, input1: [2, 3, 5, 2], input2: 3, output: 2 }, # 01
  { test: 2, input1: [1, 3, 3, 1, 1], input2: 0, output: 0 }, # 02
  { test: 3, input1: [5, 1, 3, 4, 1], input2: 0, output: 1 }, # 03
  { test: 4, input1: [1, 1, 1, 1], input2: 1, output: 4 }, # 04
  { test: 5, input1: [1, 1, 1, 1], input2: 0, output: 0 }, # 05
  { test: 6, input1: [3, 1, 1, 3, 1], input2: 2, output: 2 } # 06
].freeze

describe 'elections_winners' do
  it 'passes the supplied tests with 2 inputs and 1 output' do
    ELECTIONS_WINNERS_TEST_I_O.each do |element|
      puts "  Executing test #{element[:test]}..."
      expect(elections_winners(element[:input1], element[:input2])).to eq(element[:output])
      puts '    Passed.'
    end
  end
end
