# frozen_string_literal: true

require 'is_digit'

IS_DIGIT_TEST_I_O = [
  { test: 1, input: '0', output: true }, # 01
  { test: 2, input: '-', output: false }, # 02
  { test: 3, input: 'O', output: false }, # 03
  { test: 4, input: '1', output: true }, # 04
  { test: 5, input: '2', output: true }, # 05
  { test: 6, input: '!', output: false }, # 06
  { test: 7, input: '@', output: false }, # 07
  { test: 8, input: '+', output: false }, # 08
  { test: 9, input: '6', output: true }, # 09
  { test: 10, input: '(', output: false }, # 10
  { test: 11, input: ')', output: false } # 11
].freeze

describe 'digit?' do
  it 'passes the supplied tests with 1 input and 1 output' do
    IS_DIGIT_TEST_I_O.each do |element|
      puts "  Executing test #{element[:test]}..."
      expect(digit?(element[:input])).to eq(element[:output])
      puts '    Passed.'
    end
  end
end
