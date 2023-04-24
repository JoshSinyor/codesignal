# frozen_string_literal: true

require 'common_character_count'

COMMON_CHARACTER_COUNT_TEST_I_O = [
  { test: 1, input1: 'aabcc', input2: 'adcaa', output: 3 }, # 01
  { test: 2, input1: 'zzzz', input2: 'zzzzzzz', output: 4 }, # 02
  { test: 3, input1: 'abca', input2: 'xyzbac', output: 3 }, # 03
  { test: 4, input1: 'a', input2: 'b', output: 0 }, # 04
  { test: 5, input1: 'a', input2: 'aaa', output: 1 } # 05
].freeze

describe 'common_character_count' do
  it 'passes the supplied tests with 2 inputs and 1 output' do
    COMMON_CHARACTER_COUNT_TEST_I_O.each do |element|
      puts "  Executing test #{element[:test]}..."
      expect(common_character_count(element[:input1], element[:input2])).to eq(element[:output])
      puts '    Passed.'
    end
  end
end
