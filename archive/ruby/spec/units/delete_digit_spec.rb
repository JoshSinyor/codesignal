# frozen_string_literal: true

require 'delete_digit'

DELETE_DIGIT_TEST_I_O = [
  { test: 1, input: 152, output: 52 }, # 01
  { test: 2, input: 1001, output: 101 }, # 02
  { test: 3, input: 10, output: 1 }, # 03
  { test: 4, input: 222_219, output: 22_229 }, # 04
  { test: 5, input: 109, output: 19 }, # 05
  { test: 6, input: 222_250, output: 22_250 }, # 06
  { test: 7, input: 44_435, output: 4445 }, # 07
  { test: 8, input: 12, output: 2 }, # 08
  { test: 9, input: 218_616, output: 28_616 }, # 09
  { test: 10, input: 861_452, output: 86_452 } # 10
].freeze

describe 'delete_digit' do
  it 'passes the supplied tests with 1 input and 1 output' do
    DELETE_DIGIT_TEST_I_O.each do |element|
      puts "  Executing test #{element[:test]}..."
      expect(delete_digit(element[:input])).to eq(element[:output])
      puts '    Passed.'
    end
  end
end
