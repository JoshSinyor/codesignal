# frozen_string_literal: true

require 'solution'

TEST_I_O = [
  { test: 1, input: 'bbbaacdafe', output: true }, # 01
  { test: 2, input: 'aabbb', output: false }, # 02
  { test: 3, input: 'bbc', output: false }, # 03
  { test: 4, input: 'bbbaa', output: false }, # 04
  { test: 5, input: 'abcdefghijklmnopqrstuvwxyzz', output: false }, # 05
  { test: 6, input: 'abcdefghijklmnopqrstuvwxyz', output: true }, # 06
  { test: 7, input: 'abcdefghijklmnopqrstuvwxyzqwertuiopasdfghjklxcvbnm', output: true }, # 07
  { test: 8, input: 'fyudhrygiuhdfeis', output: false }, # 08
  { test: 9, input: 'zaa', output: false }, # 09
  { test: 10, input: 'zyy', output: false } # 10
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
