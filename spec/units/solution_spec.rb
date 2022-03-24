# frozen_string_literal: true

require 'solution'

TEST_I_O = [
  { test: 1, input1: [1, 2, 3], input2: [1, 2, 3], output: true }, # 01
  { test: 2, input1: [1, 2, 3], input2: [2, 1, 3], output: true }, # 02
  { test: 3, input1: [1, 2, 2], input2: [2, 1, 1], output: false }, # 03
  { test: 4, input1: [1, 1, 4], input2: [1, 2, 3], output: false }, # 04
  { test: 5, input1: [1, 2, 3], input2: [1, 10, 2], output: false }, # 05
  { test: 6, input1: [2, 3, 1], input2: [1, 3, 2], output: true }, # 06
  { test: 7, input1: [2, 3, 9], input2: [10, 3, 2], output: false }, # 07
  { test: 8, input1: [4, 6, 3], input2: [3, 4, 6], output: false }, # 08
  { test: 9, input1: [832, 998, 148, 570, 533, 561, 894, 147, 455, 279], input2: [832, 998, 148, 570, 533, 561, 455, 147, 894, 279], output: true }, # 09
  { test: 10, input1: [832, 998, 148, 570, 533, 561, 894, 147, 455, 279], input2: [832, 570, 148, 998, 533, 561, 455, 147, 894, 279], output: false } # 10
].freeze

describe 'solution' do
  # it 'passes the supplied tests with 1 input and 1 output' do
  #   TEST_I_O.each do |element|
  #     puts "Executing test #{element[:test]}..."
  #     expect(solution(element[:input])).to eq(element[:output])
  #     puts "Passed."
  #   end
  # end

  it 'passes the supplied tests with 2 inputs and 1 output' do
    TEST_I_O.each do |element|
      puts "Executing test #{element[:test]}..."
      expect(solution(element[:input1], element[:input2])).to eq(element[:output])
      puts 'Passed.'
    end
  end
end
