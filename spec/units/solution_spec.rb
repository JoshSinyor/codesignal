# frozen_string_literal: true

require 'solution'

TEST_I_O = [
  { test: 1, input: 5, output: 0 }, # 01
  { test: 2, input: 100, output: 1 }, # 02
  { test: 3, input: 91, output: 2 }, # 03
  { test: 4, input: 99, output: 2 }, # 04
  { test: 5, input: 1_000_000_000, output: 1 }, # 05
  { test: 6, input: 9, output: 0 }, # 06
  { test: 7, input: 73, output: 2 }, # 07
  { test: 8, input: 877, output: 2 }, # 08
  { test: 9, input: 777_773, output: 3 }, # 09
  { test: 10, input: 304, output: 1 } # 10
].freeze

describe 'solution' do
  it 'passes the supplied tests with 1 input and 1 output' do
    TEST_I_O.each do |element|
      puts "  Executing test #{element[:test]}..."
      expect(solution(element[:input])).to eq(element[:output])
      puts '    Passed.'
    end
  end
end
