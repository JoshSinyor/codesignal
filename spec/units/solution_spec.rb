# frozen_string_literal: true

require 'solution'

TEST_I_O = [
  { test: 1, input: 'bob has a racecar', output: 'racecar' }, # 01
  { test: 2, input: 'bob has a racecar and a bike', output: 'a racecar a' }, # 02
  { test: 3, input: 'anna arrived at noon', output: 'anna' } # 03
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
