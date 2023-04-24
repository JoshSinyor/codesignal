# frozen_string_literal: true

require 'check_palindrome'

CHECK_PALINDROME_TEST_I_O = [
  { test: 1, input: 'aabaa', output: true }, # 01
  { test: 2, input: 'abac', output: false }, # 02
  { test: 3, input: 'a', output: true }, # 03
  { test: 4, input: 'az', output: false }, # 04
  { test: 5, input: 'abacaba', output: true }, # 05
  { test: 6, input: 'z', output: true }, # 06
  { test: 7, input: 'aaabaaaa', output: false }, # 07
  { test: 8, input: 'zzzazzazz', output: false }, # 08
  { test: 9, input: 'hlbeeykoqqqqokyeeblh', output: true }, # 09
  { test: 10, input: 'hlbeeykoqqqokyeeblh', output: true } # 10
].freeze

describe 'check_palindrome' do
  it 'passes the supplied tests with 1 input and 1 output' do
    CHECK_PALINDROME_TEST_I_O.each do |element|
      puts "  Executing test #{element[:test]}..."
      expect(check_palindrome(element[:input])).to eq(element[:output])
      puts '    Passed.'
    end
  end
end
