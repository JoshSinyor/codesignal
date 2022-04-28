# frozen_string_literal: true

require 'solution'

TEST_I_O = [
  { test: 1, input1: 'a1', input2: 'c3', output: true }, # 01
  { test: 2, input1: 'h1', input2: 'h3', output: false }, # 02
  { test: 3, input1: 'a5', input2: 'c3', output: true }, # 03
  { test: 4, input1: 'g1', input2: 'f3', output: false }, # 04
  { test: 5, input1: 'e7', input2: 'd6', output: true }, # 05
  { test: 6, input1: 'e7', input2: 'a3', output: true }, # 06
  { test: 7, input1: 'e3', input2: 'a7', output: true }, # 07
  { test: 8, input1: 'a1', input2: 'h8', output: true }, # 08
  { test: 9, input1: 'a1', input2: 'h7', output: false }, # 09
  { test: 10, input1: 'h1', input2: 'a8', output: true } # 10
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
