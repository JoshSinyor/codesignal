# frozen_string_literal: true

require 'absolute_values_string_minimization'

ABSOLUTE_VALUES_STRING_MINIMIZATION_TEST_I_O = [
  { test: 1, input: [2, 4, 7], output: 4 }, # 01
  { test: 2, input: [2, 3], output: 2 }, # 02
  { test: 3, input: [1, 1, 3, 4], output: 1 }, # 03
  { test: 4, input: [23], output: 23 }, # 04
  { test: 5, input: [-10,
                     -10,
                     -10,
                     -10,
                     -10,
                     -9,
                     -9,
                     -9,
                     -8,
                     -8,
                     -7,
                     -6,
                     -5,
                     -4,
                     -3,
                     -2,
                     -1,
                     0,
                     0,
                     0,
                     0,
                     1,
                     2,
                     3,
                     4,
                     5,
                     6,
                     7,
                     8,
                     9,
                     10,
                     11,
                     12,
                     13,
                     14,
                     15,
                     16,
                     17,
                     18,
                     19,
                     20,
                     21,
                     22,
                     23,
                     24,
                     25,
                     26,
                     27,
                     28,
                     29,
                     30,
                     31,
                     32,
                     33,
                     34,
                     35,
                     36,
                     37,
                     38,
                     39,
                     40,
                     41,
                     42,
                     43,
                     44,
                     45,
                     46,
                     47,
                     48,
                     49,
                     50], output: 15 }, # 05
  { test: 6, input: [-4, -1], output: -4 }, # 06
  { test: 7, input: [0, 7, 9], output: 7 }, # 07
  { test: 8, input: [-1_000_000,
                     -10_000,
                     -10_000,
                     -1000,
                     -100,
                     -10,
                     -1,
                     0,
                     1,
                     10,
                     100,
                     1000,
                     10_000,
                     100_000,
                     1_000_000], output: 0 } # 08
].freeze

describe 'absolute_values_string_minimization' do
  it 'passes the supplied tests with 1 input and 1 output' do
    ABSOLUTE_VALUES_STRING_MINIMIZATION_TEST_I_O.each do |element|
      puts "  Executing test #{element[:test]}..."
      expect(absolute_values_string_minimization(element[:input])).to eq(element[:output])
      puts '    Passed.'
    end
  end
end
