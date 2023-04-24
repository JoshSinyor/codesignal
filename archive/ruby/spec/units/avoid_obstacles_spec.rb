# frozen_string_literal: true

require 'avoid_obstacles'

AVOID_OBSTACLES_TEST_I_O = [
  { test: 1, input: [5, 3, 6, 7, 9], output: 4 }, # 01
  { test: 2, input: [2, 3], output: 4 }, # 02
  { test: 3, input: [1, 4, 10, 6, 2], output: 7 }, # 03
  { test: 4, input: [1000, 999], output: 6 }, # 04
  { test: 5, input: [19, 32, 11, 23], output: 3 }, # 05
  { test: 6, input: [5, 8, 9, 13, 14], output: 6 } # 06
].freeze

describe 'avoid_obstacles' do
  it 'passes the supplied tests with 1 input and 1 output' do
    AVOID_OBSTACLES_TEST_I_O.each do |element|
      puts "  Executing test #{element[:test]}..."
      expect(avoid_obstacles(element[:input])).to eq(element[:output])
      puts '    Passed.'
    end
  end
end
