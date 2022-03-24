# frozen_string_literal: true

require 'solution'

TEST_I_O = [
  { input: [50, 60, 60, 45, 70], output: [180, 105] }, # 01
  { input: [100, 50], output: [100, 50] }, # 02
  { input: [80], output: [80, 0] }, # 03
  { input: [100, 50, 50, 100], output: [150, 150] }, # 04
  { input: [100, 51, 50, 100], output: [150, 151] } # 05
].freeze

describe 'solution' do
  it 'passes the supplied tests with 1 input and 1 output' do
    TEST_I_O.each_with_index do |element, index|
      puts "Executing test #{index + 1}."
      expect(solution(element[:input])).to eq(element[:output])
    end
  end

  # it 'passes the supplied tests with 2 inputs and 1 output' do
  #   TEST_I_O.each do |element|
  #     expect(solution(element[:input1], element[:input2])).to eq(element[:output])
  #   end
  # end
end
