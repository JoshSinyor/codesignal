# frozen_string_literal: true

require 'chessboard_cell_color'

CHESSBOARD_CELL_COLOR_TEST_I_O = [
  { test: 1, input1: 'A1', input2: 'C3', output: true }, # 01
  { test: 2, input1: 'A1', input2: 'H3', output: false }, # 02
  { test: 3, input1: 'A1', input2: 'A2', output: false }, # 03
  { test: 4, input1: 'A1', input2: 'B2', output: true }, # 04
  { test: 5, input1: 'B3', input2: 'H8', output: false }, # 05
  { test: 6, input1: 'C3', input2: 'B5', output: false }, # 06
  { test: 7, input1: 'G5', input2: 'E7', output: true }, # 07
  { test: 8, input1: 'C8', input2: 'H8', output: false }, # 08
  { test: 9, input1: 'D2', input2: 'D2', output: true }, # 09
  { test: 10, input1: 'A2', input2: 'A5', output: false } # 10
].freeze

describe 'chessboard_cell_color' do
  it 'passes the supplied tests with 2 inputs and 1 output' do
    CHESSBOARD_CELL_COLOR_TEST_I_O.each do |element|
      puts "  Executing test #{element[:test]}..."
      expect(chessboard_cell_color(element[:input1], element[:input2])).to eq(element[:output])
      puts '    Passed.'
    end
  end
end
