# frozen_string_literal: true

require 'solution'

TEST_I_O = [
  { test: 1, input: '123aa1', output: '123' }, # 01
  { test: 2, input: '0123456789', output: '0123456789' }, # 02
  { test: 3, input: '  3) always check for whitespaces', output: '' }, # 03
  { test: 4, input: '12abc34', output: '12' }, # 04
  { test: 5, input: 'the output is 42', output: '' }, # 05
  { test: 6, input: 'aaaaaaa', output: '' } # 06
].freeze

describe 'solution' do
  it 'passes the supplied tests with 1 input and 1 output' do
    TEST_I_O.each do |element|
      puts "  Executing test #{element[:test]}..."
      expect(solution(element[:input])).to eq(element[:output])
      puts '    Passed.'
    end
  end
end
