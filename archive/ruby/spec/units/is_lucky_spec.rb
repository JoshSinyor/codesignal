# frozen_string_literal: true

require 'is_lucky'

IS_LUCKY_TEST_I_O = [
  { test: 1, input: 1230, output: true }, # 01
  { test: 2, input: 239_017, output: false }, # 02
  { test: 3, input: 134_008, output: true }, # 03
  { test: 4, input: 10, output: false }, # 04
  { test: 5, input: 11, output: true }, # 05
  { test: 6, input: 1010, output: true }, # 06
  { test: 7, input: 261_534, output: false }, # 07
  { test: 8, input: 100_000, output: false }, # 08
  { test: 9, input: 999_999, output: true }, # 09
  { test: 10, input: 123_321, output: true } # 10
].freeze

describe 'lucky?' do
  it 'passes the supplied tests with 1 input and 1 output' do
    IS_LUCKY_TEST_I_O.each do |element|
      puts "  Executing test #{element[:test]}..."
      expect(lucky?(element[:input])).to eq(element[:output])
      puts '    Passed.'
    end
  end
end
