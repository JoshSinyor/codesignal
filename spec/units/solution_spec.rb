# frozen_string_literal: true

require 'solution'

TEST_I_O = [
  { test: 1, input: 'NS', output: 1 }, # 01
  { test: 2, input: 'WEWNES', output: 2 }, # 02
  { test: 3, input: 'SxWxNxN', output: 0 } # 03
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
