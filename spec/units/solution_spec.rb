# frozen_string_literal: true

require 'solution'

TEST_I_O = [
  { test: 1, input: 'aabb', output: true }, # 01
  { test: 2, input: 'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaabc', output: false }, # 02
  { test: 3, input: 'abbcabb', output: true }, # 03
  { test: 4, input: 'zyyzzzzz', output: true }, # 04
  { test: 5, input: 'z', output: true }, # 05
  { test: 6, input: 'zaa', output: true }, # 06
  { test: 7, input: 'abca', output: false }, # 07
  { test: 8, input: 'abcad', output: false }, # 08
  { test: 9, input: 'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaabbbccccaaaaaaaaaaaaa', output: false }, # 09
  { test: 10, input: 'abdhuierf', output: false } # 10
].freeze

describe 'solution' do
  it 'passes the supplied tests with 1 input and 1 output' do
    TEST_I_O.each do |element|
      puts "Executing test #{element[:test]}..."
      expect(solution(element[:input])).to eq(element[:output])
      puts 'Passed.'
    end
  end

  # it 'passes the supplied tests with 2 inputs and 1 output' do
  #   TEST_I_O.each do |element|
  #     puts "Executing test #{element[:test]}..."
  #     expect(solution(element[:input1], element[:input2])).to eq(element[:output])
  #     puts 'Passed.'
  #   end
  # end
end
