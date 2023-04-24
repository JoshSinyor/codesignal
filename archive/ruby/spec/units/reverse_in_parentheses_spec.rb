# frozen_string_literal: true

require 'reverse_in_parentheses'

REVERSE_IN_PARENTHESES_TEST_I_O = [
  { test: 1, input: '(bar)', output: 'rab' }, # 01
  { test: 2, input: 'foo(bar)baz', output: 'foorabbaz' }, # 02
  { test: 3, input: 'foo(bar)baz(blim)', output: 'foorabbazmilb' }, # 03
  { test: 4, input: 'foo(bar(baz))blim', output: 'foobazrabblim' }, # 04
  { test: 5, input: '', output: '' }, # 05
  { test: 6, input: '()', output: '' }, # 06
  { test: 7, input: '(abc)d(efg)', output: 'cbadgfe' } # 07
].freeze

describe 'reverse_in_parentheses' do
  it 'passes the supplied tests with 1 input and 1 output' do
    REVERSE_IN_PARENTHESES_TEST_I_O.each do |element|
      puts "  Executing test #{element[:test]}..."
      expect(reverse_in_parentheses(element[:input])).to eq(element[:output])
      puts '    Passed.'
    end
  end
end
