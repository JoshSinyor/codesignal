
# frozen_string_literal: true

require 'solution'

TEST_I_O = [
  { test: 1, input1: 'Yes, we all really like pizza.', input2: 'Where can we buy pizza around here?', output: 2 }, # 01
  { test: 2, input1: 'There were four people at dinner.', input2: 'There were seven people at dinner.', output: 5 } # 02
].freeze

describe 'solution' do
  # it 'passes the supplied tests with 1 input and 1 output' do
  #   TEST_I_O.each do |element|
  #     puts "Executing test #{element[:test]}..."
  #     expect(solution(element[:input])).to eq(element[:output])
  #     puts 'Passed.'
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
