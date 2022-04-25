# frozen_string_literal: true

require 'solution'

TEST_I_O = [
  { test: 1, input: 'var_1__Int', output: true }, # 01
  { test: 2, input: 'qq-q', output: false }, # 02
  { test: 3, input: '2w2', output: false }, # 03
  { test: 4, input: ' variable', output: false }, # 04
  { test: 5, input: 'va[riable0', output: false }, # 05
  { test: 6, input: 'variable0', output: true }, # 06
  { test: 7, input: 'a', output: true }, # 07
  { test: 8, input: '_Aas_23', output: true }, # 08
  { test: 9, input: 'a a_2', output: false }, # 09
  { test: 10, input: '0ss', output: false } # 10
].freeze

describe 'solution' do
  it 'passes the supplied tests with 1 input and 1 output' do
    TEST_I_O.each do |element|
      puts "Executing test #{element[:test]}..."
      expect(solution(element[:input])).to eq(element[:output])
      puts 'Passed.'
    end
  end
end
