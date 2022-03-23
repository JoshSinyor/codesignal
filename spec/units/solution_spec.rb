# frozen_string_literal: true

require 'solution'

TEST_I_O = [
  { input: 1230, output: true }, # 01
  { input: 239_017, output: false }, # 02
  { input: 134_008, output: true }, # 03
  { input: 10, output: false }, # 04
  { input: 11, output: true }, # 05
  { input: 1010, output: true }, # 06
  { input: 261_534, output: false }, # 07
  { input: 100_000, output: false }, # 08
  { input: 999_999, output: true }, # 09
  { input: 123_321, output: true } # 10
].freeze

describe 'solution' do
  it 'passes the supplied tests with 1 input and 1 output' do
    TEST_I_O.each do |element|
      expect(solution(element[:input])).to eq(element[:output])
    end
  end

  # it 'passes the supplied tests with 2 inputs and 1 output' do
  #   TEST_I_O.each do |element|
  #     expect(solution(element[:input1], element[:input2])).to eq(element[:output])
  #   end
  # end
end
