# frozen_string_literal: true

require 'minesweeper'

MINESWEEPER_TEST_I_O = [
  { test: 1, input: [[true, false, false],
                     [false, true, false],
                     [false, false, false]], output: [[1, 2, 1],
                                                      [2, 1, 1],
                                                      [1, 1, 1]] }, # 01
  { test: 2, input: [[false, false, false],
                     [false, false, false]], output: [[0, 0, 0],
                                                      [0, 0, 0]] }, # 02
  { test: 3, input: [[true, false, false, true],
                     [false, false, true, false],
                     [true, true, false, true]], output: [[0, 2, 2, 1],
                                                          [3, 4, 3, 3],
                                                          [1, 2, 3, 1]] }, # 03
  { test: 4, input: [[true, true, true],
                     [true, true, true],
                     [true, true, true]], output: [[3, 5, 3],
                                                   [5, 8, 5],
                                                   [3, 5, 3]] }, # 04
  { test: 5, input: [[false, true, true, false],
                     [true, true, false, true],
                     [false, false, true, false]], output: [[3, 3, 3, 2],
                                                            [2, 4, 5, 2],
                                                            [2, 3, 2, 2]] }, # 05
  { test: 6, input: [[true, false],
                     [true, false],
                     [false, true],
                     [false, false],
                     [false, false]], output: [[1, 2],
                                               [2, 3],
                                               [2, 1],
                                               [1, 1],
                                               [0, 0]] } # 06
].freeze

describe 'minesweeper' do
  it 'passes the supplied tests with 1 input and 1 output' do
    MINESWEEPER_TEST_I_O.each do |element|
      puts "  Executing test #{element[:test]}..."
      expect(minesweeper(element[:input])).to eq(element[:output])
      puts '    Passed.'
    end
  end
end
