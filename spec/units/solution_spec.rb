# frozen_string_literal: true

require 'solution'

TEST_I_O = [
  { test: 1, input: 'abcdc', output: 'abcdcba' }, # 01
  { test: 2, input: 'ababab', output: 'abababa' }, # 02
  { test: 3, input: 'abba', output: 'abba' }, # 03
  { test: 4, input: 'abaa', output: 'abaaba' }, # 04
  { test: 5, input: 'aaaaba', output: 'aaaabaaaa' }, # 05
  { test: 6, input: 'abc', output: 'abcba' }, # 06
  { test: 7, input: 'kebab', output: 'kebabek' }, # 07
  { test: 8, input: 'abccba', output: 'abccba' }, # 08
  { test: 9, input: 'abcabc', output: 'abcabcbacba' }, # 09
  { test: 10, input: 'cbdbedffcg', output: 'cbdbedffcgcffdebdbc' }, # 10
  { test: 11, input: 'euotmn', output: 'euotmnmtoue' } # 11
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
