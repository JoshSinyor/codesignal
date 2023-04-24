# frozen_string_literal: true

require 'line_encoding'

LINE_ENCODING_TEST_I_O = [
  { test: 1, input: 'aabbbc', output: '2a3bc' }, # 01
  { test: 2, input: 'abbcabb', output: 'a2bca2b' }, # 02
  { test: 3, input: 'abcd', output: 'abcd' }, # 03
  { test: 4, input: 'zzzz', output: '4z' }, # 04
  { test: 5, input: 'wwwwwwwawwwwwww', output: '7wa7w' }, # 05
  { test: 6, input: 'ccccccccccccccc', output: '15c' }, # 06
  { test: 7, input: 'qwertyuioplkjhg', output: 'qwertyuioplkjhg' }, # 07
  { test: 8, input: 'ssiiggkooo', output: '2s2i2gk3o' }, # 08
  { test: 9, input: 'adfaaa', output: 'adf3a' }, # 09
  { test: 10, input: 'bbjaadlkjdl', output: '2bj2adlkjdl' } # 10
].freeze

describe 'line_encoding' do
  it 'passes the supplied tests with 1 input and 1 output' do
    LINE_ENCODING_TEST_I_O.each do |element|
      puts "  Executing test #{element[:test]}..."
      expect(line_encoding(element[:input])).to eq(element[:output])
      puts '    Passed.'
    end
  end
end
