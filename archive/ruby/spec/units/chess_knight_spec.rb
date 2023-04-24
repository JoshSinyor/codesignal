# frozen_string_literal: true

require 'chess_knight'

CHESS_KNIGHT_TEST_I_O = [
  { test: 1, input: 'a1', output: 2 }, # 01
  { test: 2, input: 'c2', output: 6 }, # 02
  { test: 3, input: 'd4', output: 8 }, # 03
  { test: 4, input: 'g6', output: 6 }, # 04
  { test: 5, input: 'a3', output: 4 }, # 05
  { test: 6, input: 'b7', output: 4 }, # 06
  { test: 7, input: 'h8', output: 2 }, # 07
  { test: 8, input: 'h6', output: 4 }, # 08
  { test: 9, input: 'g8', output: 3 }, # 09
  { test: 10, input: 'a5', output: 4 } # 10
].freeze

describe 'chess_knight' do
  it 'passes the supplied tests with 1 input and 1 output' do
    CHESS_KNIGHT_TEST_I_O.each do |element|
      puts "  Executing test #{element[:test]}..."
      expect(chess_knight(element[:input])).to eq(element[:output])
      puts '    Passed.'
    end
  end
end
